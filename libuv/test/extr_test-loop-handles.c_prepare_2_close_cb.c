
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int prepare_2_close_cb_called ;
 int prepare_2_handle ;
 int stderr ;

__attribute__((used)) static void prepare_2_close_cb(uv_handle_t* handle) {
  fprintf(stderr, "%s", "PREPARE_2_CLOSE_CB\n");
  fflush(stderr);
  ASSERT(handle == (uv_handle_t*)&prepare_2_handle);

  prepare_2_close_cb_called++;
}
