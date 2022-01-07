
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int idle_2_close_cb_called ;
 int idle_2_handle ;
 int idle_2_is_active ;
 int stderr ;

__attribute__((used)) static void idle_2_close_cb(uv_handle_t* handle) {
  fprintf(stderr, "%s", "IDLE_2_CLOSE_CB\n");
  fflush(stderr);

  ASSERT(handle == (uv_handle_t*)&idle_2_handle);

  ASSERT(idle_2_is_active);

  idle_2_close_cb_called++;
  idle_2_is_active = 0;
}
