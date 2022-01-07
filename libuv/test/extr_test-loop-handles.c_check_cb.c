
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;
typedef int uv_check_t ;


 int ASSERT (int) ;
 int IDLE_COUNT ;
 int ITERATIONS ;
 int check_cb_called ;
 int check_close_cb ;
 int check_handle ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int idle_1_cb ;
 int idle_1_close_cb ;
 int * idle_1_handles ;
 int idle_2_close_cb ;
 int idle_2_handle ;
 scalar_t__ idle_2_is_active ;
 int idles_1_active ;
 int loop_iteration ;
 int prepare_1_close_cb ;
 int prepare_1_handle ;
 int prepare_2_close_cb ;
 int prepare_2_handle ;
 int stderr ;
 int uv_close (int *,int ) ;
 int uv_idle_start (int *,int ) ;

__attribute__((used)) static void check_cb(uv_check_t* handle) {
  int i, r;

  fprintf(stderr, "%s", "CHECK_CB\n");
  fflush(stderr);
  ASSERT(handle == &check_handle);

  if (loop_iteration < ITERATIONS) {

    for (i = 0; i < 1 + (loop_iteration % IDLE_COUNT); i++) {
      r = uv_idle_start(&idle_1_handles[i], idle_1_cb);
      ASSERT(r == 0);
      idles_1_active++;
    }

  } else {

    uv_close((uv_handle_t*)&prepare_1_handle, prepare_1_close_cb);
    uv_close((uv_handle_t*)&check_handle, check_close_cb);
    uv_close((uv_handle_t*)&prepare_2_handle, prepare_2_close_cb);

    for (i = 0; i < IDLE_COUNT; i++) {
      uv_close((uv_handle_t*)&idle_1_handles[i], idle_1_close_cb);
    }



    if (idle_2_is_active) {
      uv_close((uv_handle_t*)&idle_2_handle, idle_2_close_cb);
    }
  }

  check_cb_called++;
}
