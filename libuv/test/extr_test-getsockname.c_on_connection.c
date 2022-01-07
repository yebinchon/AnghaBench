
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * data; } ;
typedef TYPE_1__ uv_tcp_t ;
typedef int uv_stream_t ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int after_read ;
 int alloc ;
 int check_sockname (struct sockaddr*,char*,int ,char*) ;
 int connect_port ;
 int fprintf (int ,char*,char*) ;
 int getpeernamecount ;
 int getsocknamecount ;
 int loop ;
 TYPE_1__* malloc (int) ;
 int server_port ;
 int stderr ;
 int uv_accept (int *,int *) ;
 char* uv_err_name (int) ;
 int uv_read_start (int *,int ,int ) ;
 int uv_tcp_getpeername (TYPE_1__*,struct sockaddr*,int*) ;
 int uv_tcp_getsockname (TYPE_1__*,struct sockaddr*,int*) ;
 int uv_tcp_init (int ,TYPE_1__*) ;

__attribute__((used)) static void on_connection(uv_stream_t* server, int status) {
  struct sockaddr sockname, peername;
  int namelen;
  uv_tcp_t* handle;
  int r;

  if (status != 0) {
    fprintf(stderr, "Connect error %s\n", uv_err_name(status));
  }
  ASSERT(status == 0);

  handle = malloc(sizeof(*handle));
  ASSERT(handle != ((void*)0));

  r = uv_tcp_init(loop, handle);
  ASSERT(r == 0);


  handle->data = server;

  r = uv_accept(server, (uv_stream_t*)handle);
  ASSERT(r == 0);

  namelen = sizeof sockname;
  r = uv_tcp_getsockname(handle, &sockname, &namelen);
  ASSERT(r == 0);
  check_sockname(&sockname, "127.0.0.1", server_port, "accepted socket");
  getsocknamecount++;

  namelen = sizeof peername;
  r = uv_tcp_getpeername(handle, &peername, &namelen);
  ASSERT(r == 0);
  check_sockname(&peername, "127.0.0.1", connect_port, "accepted socket peer");
  getpeernamecount++;

  r = uv_read_start((uv_stream_t*)handle, alloc, after_read);
  ASSERT(r == 0);
}
