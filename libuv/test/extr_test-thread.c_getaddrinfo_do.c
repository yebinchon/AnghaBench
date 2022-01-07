
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct getaddrinfo_req {int handle; int loop; } ;


 int ASSERT (int) ;
 int getaddrinfo_cb ;
 int uv_getaddrinfo (int ,int *,int ,char*,int *,int *) ;

__attribute__((used)) static void getaddrinfo_do(struct getaddrinfo_req* req) {
  int r;

  r = uv_getaddrinfo(req->loop,
                     &req->handle,
                     getaddrinfo_cb,
                     "localhost",
                     ((void*)0),
                     ((void*)0));
  ASSERT(r == 0);
}
