
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_5__ {int retcode; int * alloc; int work_req; struct addrinfoW* addrinfow; int * service; int * node; int * loop; int * addrinfo; scalar_t__ getaddrinfo_cb; } ;
typedef TYPE_1__ uv_getaddrinfo_t ;
typedef scalar_t__ uv_getaddrinfo_cb ;
struct addrinfoW {int * ai_next; int * ai_addr; int * ai_canonname; scalar_t__ ai_addrlen; int ai_flags; int ai_protocol; int ai_socktype; int ai_family; } ;
struct addrinfo {int ai_flags; int ai_protocol; int ai_socktype; int ai_family; } ;
typedef int hostname_ascii ;
typedef int WCHAR ;


 int ALIGNED_SIZE (int) ;
 int CP_UTF8 ;
 int GetLastError () ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int UV_EINVAL ;
 int UV_GETADDRINFO ;
 int UV_REQ_INIT (TYPE_1__*,int ) ;
 int UV__WORK_SLOW_IO ;
 int WSAENOBUFS ;
 int strlen (char const*) ;
 int uv__free (int *) ;
 int uv__getaddrinfo_done (int *,int ) ;
 int uv__getaddrinfo_work (int *) ;
 long uv__idna_toascii (char const*,char const*,char*,char*) ;
 scalar_t__ uv__malloc (int) ;
 int uv__req_register (int *,TYPE_1__*) ;
 int uv__work_submit (int *,int *,int ,int (*) (int *),int (*) (int *,int )) ;
 int uv_translate_sys_error (int) ;

int uv_getaddrinfo(uv_loop_t* loop,
                   uv_getaddrinfo_t* req,
                   uv_getaddrinfo_cb getaddrinfo_cb,
                   const char* node,
                   const char* service,
                   const struct addrinfo* hints) {
  char hostname_ascii[256];
  int nodesize = 0;
  int servicesize = 0;
  int hintssize = 0;
  char* alloc_ptr = ((void*)0);
  int err;
  long rc;

  if (req == ((void*)0) || (node == ((void*)0) && service == ((void*)0))) {
    return UV_EINVAL;
  }

  UV_REQ_INIT(req, UV_GETADDRINFO);
  req->getaddrinfo_cb = getaddrinfo_cb;
  req->addrinfo = ((void*)0);
  req->loop = loop;
  req->retcode = 0;


  if (node != ((void*)0)) {
    rc = uv__idna_toascii(node,
                          node + strlen(node),
                          hostname_ascii,
                          hostname_ascii + sizeof(hostname_ascii));
    if (rc < 0)
      return rc;
    nodesize = ALIGNED_SIZE(MultiByteToWideChar(CP_UTF8, 0, hostname_ascii,
                                                -1, ((void*)0), 0) * sizeof(WCHAR));
    if (nodesize == 0) {
      err = GetLastError();
      goto error;
    }
    node = hostname_ascii;
  }

  if (service != ((void*)0)) {
    servicesize = ALIGNED_SIZE(MultiByteToWideChar(CP_UTF8,
                                                   0,
                                                   service,
                                                   -1,
                                                   ((void*)0),
                                                   0) *
                               sizeof(WCHAR));
    if (servicesize == 0) {
      err = GetLastError();
      goto error;
    }
  }
  if (hints != ((void*)0)) {
    hintssize = ALIGNED_SIZE(sizeof(struct addrinfoW));
  }


  alloc_ptr = (char*)uv__malloc(nodesize + servicesize + hintssize);
  if (!alloc_ptr) {
    err = WSAENOBUFS;
    goto error;
  }


  req->alloc = (void*)alloc_ptr;



  if (node != ((void*)0)) {
    req->node = (WCHAR*)alloc_ptr;
    if (MultiByteToWideChar(CP_UTF8,
                            0,
                            node,
                            -1,
                            (WCHAR*) alloc_ptr,
                            nodesize / sizeof(WCHAR)) == 0) {
      err = GetLastError();
      goto error;
    }
    alloc_ptr += nodesize;
  } else {
    req->node = ((void*)0);
  }



  if (service != ((void*)0)) {
    req->service = (WCHAR*)alloc_ptr;
    if (MultiByteToWideChar(CP_UTF8,
                            0,
                            service,
                            -1,
                            (WCHAR*) alloc_ptr,
                            servicesize / sizeof(WCHAR)) == 0) {
      err = GetLastError();
      goto error;
    }
    alloc_ptr += servicesize;
  } else {
    req->service = ((void*)0);
  }


  if (hints != ((void*)0)) {
    req->addrinfow = (struct addrinfoW*)alloc_ptr;
    req->addrinfow->ai_family = hints->ai_family;
    req->addrinfow->ai_socktype = hints->ai_socktype;
    req->addrinfow->ai_protocol = hints->ai_protocol;
    req->addrinfow->ai_flags = hints->ai_flags;
    req->addrinfow->ai_addrlen = 0;
    req->addrinfow->ai_canonname = ((void*)0);
    req->addrinfow->ai_addr = ((void*)0);
    req->addrinfow->ai_next = ((void*)0);
  } else {
    req->addrinfow = ((void*)0);
  }

  uv__req_register(loop, req);

  if (getaddrinfo_cb) {
    uv__work_submit(loop,
                    &req->work_req,
                    UV__WORK_SLOW_IO,
                    uv__getaddrinfo_work,
                    uv__getaddrinfo_done);
    return 0;
  } else {
    uv__getaddrinfo_work(&req->work_req);
    uv__getaddrinfo_done(&req->work_req, 0);
    return req->retcode;
  }

error:
  if (req != ((void*)0)) {
    uv__free(req->alloc);
    req->alloc = ((void*)0);
  }
  return uv_translate_sys_error(err);
}
