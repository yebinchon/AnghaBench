
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_check_t ;


 int ASSERT (int) ;
 int check_cb_called ;
 int check_handle ;
 int fflush (int ) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static void check_cb(uv_check_t* handle) {
  ASSERT(handle == &check_handle);

  check_cb_called++;
  fprintf(stderr, "check_cb %d\n", check_cb_called);
  fflush(stderr);
}
