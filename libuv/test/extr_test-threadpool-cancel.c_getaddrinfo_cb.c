
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_getaddrinfo_t ;
struct addrinfo {int dummy; } ;


 int ASSERT (int) ;
 int UV_EAI_CANCELED ;
 int uv_freeaddrinfo (struct addrinfo*) ;

__attribute__((used)) static void getaddrinfo_cb(uv_getaddrinfo_t* req,
                           int status,
                           struct addrinfo* res) {
  ASSERT(status == UV_EAI_CANCELED);
  ASSERT(res == ((void*)0));
  uv_freeaddrinfo(res);
}
