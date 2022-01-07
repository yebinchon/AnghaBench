
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_process_t ;
typedef int uv_handle_t ;
typedef int int64_t ;


 int ASSERT (int) ;
 int process_close_cb ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void exit_cb(uv_process_t* process,
                    int64_t exit_status,
                    int term_signal) {
  ASSERT(exit_status == 42);
  ASSERT(term_signal == 0);
  uv_close((uv_handle_t*)process, process_close_cb);
}
