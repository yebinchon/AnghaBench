
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 scalar_t__ uv__make_pipe (int ,int ) ;
 int uv__signal_global_fini () ;
 int uv__signal_lock_pipefd ;
 scalar_t__ uv__signal_unlock () ;

__attribute__((used)) static void uv__signal_global_reinit(void) {
  uv__signal_global_fini();

  if (uv__make_pipe(uv__signal_lock_pipefd, 0))
    abort();

  if (uv__signal_unlock())
    abort();
}
