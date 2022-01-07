
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_prepare_t ;


 int ASSERT (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int loop_iteration ;
 int prepare_2_cb_called ;
 int prepare_2_handle ;
 int stderr ;
 int uv_prepare_stop (int *) ;

__attribute__((used)) static void prepare_2_cb(uv_prepare_t* handle) {
  int r;

  fprintf(stderr, "%s", "PREPARE_2_CB\n");
  fflush(stderr);
  ASSERT(handle == &prepare_2_handle);





  ASSERT(loop_iteration % 2 != 0);

  r = uv_prepare_stop((uv_prepare_t*)handle);
  ASSERT(r == 0);

  prepare_2_cb_called++;
}
