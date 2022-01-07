
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_signal_t ;


 int ASSERT (int) ;
 int SIGUSR1 ;
 int increment_counter (int *) ;
 int signal1_cb_counter ;
 int uv_signal_stop (int *) ;

__attribute__((used)) static void signal1_cb(uv_signal_t* handle, int signum) {
  ASSERT(signum == SIGUSR1);
  increment_counter(&signal1_cb_counter);
  uv_signal_stop(handle);
}
