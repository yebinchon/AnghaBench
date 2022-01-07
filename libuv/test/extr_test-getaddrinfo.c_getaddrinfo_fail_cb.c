
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_getaddrinfo_t ;
struct addrinfo {int dummy; } ;


 int ASSERT (int) ;
 scalar_t__ fail_cb_called ;
 int uv_freeaddrinfo (struct addrinfo*) ;

__attribute__((used)) static void getaddrinfo_fail_cb(uv_getaddrinfo_t* req,
                                int status,
                                struct addrinfo* res) {
  ASSERT(fail_cb_called == 0);
  ASSERT(status < 0);
  ASSERT(res == ((void*)0));
  uv_freeaddrinfo(res);
  fail_cb_called++;
}
