
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_idle_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int idle_2_cb_called ;
 int idle_2_close_cb ;
 int idle_2_handle ;
 int stderr ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void idle_2_cb(uv_idle_t* handle) {
  fprintf(stderr, "%s", "IDLE_2_CB\n");
  fflush(stderr);

  ASSERT(handle == &idle_2_handle);

  idle_2_cb_called++;

  uv_close((uv_handle_t*)handle, idle_2_close_cb);
}
