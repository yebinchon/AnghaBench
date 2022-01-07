
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_getaddrinfo_t ;
struct addrinfo {int dummy; } ;


 int ASSERT (int) ;
 scalar_t__ TOTAL_CALLS ;
 int calls_completed ;
 scalar_t__ calls_initiated ;
 int getaddrinfo_initiate (int *) ;
 int uv_freeaddrinfo (struct addrinfo*) ;

__attribute__((used)) static void getaddrinfo_cb(uv_getaddrinfo_t* handle, int status,
    struct addrinfo* res) {
  ASSERT(status == 0);
  calls_completed++;
  if (calls_initiated < TOTAL_CALLS) {
    getaddrinfo_initiate(handle);
  }

  uv_freeaddrinfo(res);
}
