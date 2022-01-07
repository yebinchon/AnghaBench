
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ uv_getaddrinfo_t ;
struct addrinfo {int dummy; } ;


 int ASSERT (int) ;
 int CONCURRENT_COUNT ;
 int * callback_counts ;
 int free (int*) ;
 int getaddrinfo_cbs ;
 TYPE_1__* getaddrinfo_handles ;
 int uv_freeaddrinfo (struct addrinfo*) ;

__attribute__((used)) static void getaddrinfo_cuncurrent_cb(uv_getaddrinfo_t* handle,
                                      int status,
                                      struct addrinfo* res) {
  int i;
  int* data = (int*)handle->data;

  for (i = 0; i < CONCURRENT_COUNT; i++) {
    if (&getaddrinfo_handles[i] == handle) {
      ASSERT(i == *data);

      callback_counts[i]++;
      break;
    }
  }
  ASSERT (i < CONCURRENT_COUNT);

  free(data);
  uv_freeaddrinfo(res);

  getaddrinfo_cbs++;
}
