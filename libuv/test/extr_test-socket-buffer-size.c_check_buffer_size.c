
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int) ;
 scalar_t__ uv_recv_buffer_size (int *,int*) ;

__attribute__((used)) static void check_buffer_size(uv_handle_t* handle) {
  int value;

  value = 0;
  ASSERT(0 == uv_recv_buffer_size(handle, &value));
  ASSERT(value > 0);

  value = 10000;
  ASSERT(0 == uv_recv_buffer_size(handle, &value));

  value = 0;
  ASSERT(0 == uv_recv_buffer_size(handle, &value));

  ASSERT(value == 10000 || value == 20000);
}
