
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_prepare_t ;


 int ASSERT (int) ;
 int ITERATIONS ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int loop_iteration ;
 int prepare_1_cb_called ;
 int prepare_1_handle ;
 int prepare_2_cb ;
 int prepare_2_handle ;
 int printf (char*,int,int) ;
 int stderr ;
 int uv_prepare_start (int *,int ) ;

__attribute__((used)) static void prepare_1_cb(uv_prepare_t* handle) {
  int r;

  fprintf(stderr, "%s", "PREPARE_1_CB\n");
  fflush(stderr);
  ASSERT(handle == &prepare_1_handle);

  if (loop_iteration % 2 == 0) {
    r = uv_prepare_start(&prepare_2_handle, prepare_2_cb);
    ASSERT(r == 0);
  }

  prepare_1_cb_called++;
  loop_iteration++;

  printf("Loop iteration %d of %d.\n", loop_iteration, ITERATIONS);
}
