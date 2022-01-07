
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int) ;
 int check_close_cb_called ;
 int check_handle ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void check_close_cb(uv_handle_t* handle) {
  fprintf(stderr, "%s", "CHECK_CLOSE_CB\n");
  fflush(stderr);
  ASSERT(handle == (uv_handle_t*)&check_handle);

  check_close_cb_called++;
}
