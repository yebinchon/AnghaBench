
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_signal_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;
typedef enum signal_action { ____Placeholder_signal_action } signal_action ;


 int ASSERT (int) ;
 int ONLY_SIGUSR1 ;
 int ONLY_SIGUSR2 ;
 int SIGUSR1 ;
 int SIGUSR1_AND_SIGUSR2 ;
 int SIGUSR2 ;
 int UV_RUN_DEFAULT ;
 int sem ;
 int signal1_cb ;
 int signal2_cb ;
 int uv_close (int *,int *) ;
 int uv_loop_close (int *) ;
 scalar_t__ uv_loop_init (int *) ;
 int uv_run (int *,int ) ;
 int uv_sem_post (int *) ;
 int uv_signal_init (int *,int *) ;
 int uv_signal_start (int *,int ,int ) ;

__attribute__((used)) static void signal_handling_worker(void* context) {
  enum signal_action action;
  uv_signal_t signal1a;
  uv_signal_t signal1b;
  uv_signal_t signal2;
  uv_loop_t loop;
  int r;

  action = (enum signal_action) (uintptr_t) context;

  ASSERT(0 == uv_loop_init(&loop));


  if (action == ONLY_SIGUSR1 || action == SIGUSR1_AND_SIGUSR2) {
    r = uv_signal_init(&loop, &signal1a);
    ASSERT(r == 0);
    r = uv_signal_start(&signal1a, signal1_cb, SIGUSR1);
    ASSERT(r == 0);
    r = uv_signal_init(&loop, &signal1b);
    ASSERT(r == 0);
    r = uv_signal_start(&signal1b, signal1_cb, SIGUSR1);
    ASSERT(r == 0);
  }

  if (action == ONLY_SIGUSR2 || action == SIGUSR1_AND_SIGUSR2) {
    r = uv_signal_init(&loop, &signal2);
    ASSERT(r == 0);
    r = uv_signal_start(&signal2, signal2_cb, SIGUSR2);
    ASSERT(r == 0);
  }


  uv_sem_post(&sem);




  r = uv_run(&loop, UV_RUN_DEFAULT);
  ASSERT(r == 0);


  if (action == ONLY_SIGUSR1 || action == SIGUSR1_AND_SIGUSR2) {
    r = uv_signal_start(&signal1a, signal1_cb, SIGUSR1);
    ASSERT(r == 0);
    r = uv_signal_start(&signal1b, signal1_cb, SIGUSR1);
    ASSERT(r == 0);
  }

  if (action == ONLY_SIGUSR2 || action == SIGUSR1_AND_SIGUSR2) {
    r = uv_signal_start(&signal2, signal2_cb, SIGUSR2);
    ASSERT(r == 0);
  }


  uv_sem_post(&sem);

  r = uv_run(&loop, UV_RUN_DEFAULT);
  ASSERT(r == 0);


  if (action == ONLY_SIGUSR1 || action == SIGUSR1_AND_SIGUSR2) {
    uv_close((uv_handle_t*) &signal1a, ((void*)0));
    uv_close((uv_handle_t*) &signal1b, ((void*)0));
  }

  if (action == ONLY_SIGUSR2 || action == SIGUSR1_AND_SIGUSR2) {
    uv_close((uv_handle_t*) &signal2, ((void*)0));
  }


  r = uv_run(&loop, UV_RUN_DEFAULT);
  ASSERT(r == 0);

  uv_loop_close(&loop);
}
