
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_signal_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int SIGTERM ;
 int UV_RUN_DEFAULT ;
 int free (int *) ;
 int increment_counter (int *) ;
 int loop_creation_counter ;
 int * malloc (int) ;
 int signal_unexpected_cb ;
 int stop ;
 int uv_close (int *,int *) ;
 int uv_loop_close (int *) ;
 scalar_t__ uv_loop_init (int *) ;
 int uv_run (int *,int ) ;
 int uv_signal_init (int *,int *) ;
 int uv_signal_start (int *,int ,int ) ;

__attribute__((used)) static void loop_creating_worker(void* context) {
  (void) context;

  do {
    uv_loop_t *loop;
    uv_signal_t signal;
    int r;

    loop = malloc(sizeof(*loop));
    ASSERT(loop != ((void*)0));
    ASSERT(0 == uv_loop_init(loop));

    r = uv_signal_init(loop, &signal);
    ASSERT(r == 0);

    r = uv_signal_start(&signal, signal_unexpected_cb, SIGTERM);
    ASSERT(r == 0);

    uv_close((uv_handle_t*) &signal, ((void*)0));

    r = uv_run(loop, UV_RUN_DEFAULT);
    ASSERT(r == 0);

    uv_loop_close(loop);
    free(loop);

    increment_counter(&loop_creation_counter);
  } while (!stop);
}
