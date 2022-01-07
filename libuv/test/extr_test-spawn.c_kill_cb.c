
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pid; } ;
typedef TYPE_1__ uv_process_t ;
typedef int uv_handle_t ;
typedef int int64_t ;


 int ASSERT (int) ;
 int SIGKILL ;
 int SIGTERM ;
 int UV_ESRCH ;
 int close_cb ;
 int exit_cb_called ;
 scalar_t__ no_term_signal ;
 int printf (char*) ;
 int uv_close (int *,int ) ;
 int uv_kill (int ,int ) ;

__attribute__((used)) static void kill_cb(uv_process_t* process,
                    int64_t exit_status,
                    int term_signal) {
  int err;

  printf("exit_cb\n");
  exit_cb_called++;



  ASSERT(exit_status == 0);
  ASSERT(no_term_signal || term_signal == SIGTERM);

  uv_close((uv_handle_t*)process, close_cb);






  err = uv_kill(process->pid, 0);
  ASSERT(err == UV_ESRCH);
}
