
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_getaddrinfo_t ;
struct addrinfo {int dummy; } ;


 int ASSERT (int) ;
 int free (int *) ;
 int getaddrinfo_cbs ;
 int * getaddrinfo_handle ;
 int uv_freeaddrinfo (struct addrinfo*) ;

__attribute__((used)) static void getaddrinfo_basic_cb(uv_getaddrinfo_t* handle,
                                 int status,
                                 struct addrinfo* res) {
  ASSERT(handle == getaddrinfo_handle);
  getaddrinfo_cbs++;
  free(handle);
  uv_freeaddrinfo(res);
}
