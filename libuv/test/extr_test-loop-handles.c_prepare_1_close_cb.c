
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int prepare_1_close_cb_called ;
 int prepare_1_handle ;
 int stderr ;

__attribute__((used)) static void prepare_1_close_cb(uv_handle_t* handle) {
  fprintf(stderr, "%s", "PREPARE_1_CLOSE_CB");
  fflush(stderr);
  ASSERT(handle == (uv_handle_t*)&prepare_1_handle);

  prepare_1_close_cb_called++;
}
