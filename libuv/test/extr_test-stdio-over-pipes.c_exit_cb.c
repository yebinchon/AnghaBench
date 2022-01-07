
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_process_t ;
typedef int uv_handle_t ;
typedef scalar_t__ int64_t ;


 int ASSERT (int) ;
 int close_cb ;
 int exit_cb_called ;
 int in ;
 int out ;
 int printf (char*) ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void exit_cb(uv_process_t* process,
                    int64_t exit_status,
                    int term_signal) {
  printf("exit_cb\n");
  exit_cb_called++;
  ASSERT(exit_status == 0);
  ASSERT(term_signal == 0);
  uv_close((uv_handle_t*)process, close_cb);
  uv_close((uv_handle_t*)&in, close_cb);
  uv_close((uv_handle_t*)&out, close_cb);
}
