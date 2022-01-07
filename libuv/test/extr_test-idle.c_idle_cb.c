
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_idle_t ;


 int ASSERT (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,int) ;
 int idle_cb_called ;
 int idle_handle ;
 int stderr ;

__attribute__((used)) static void idle_cb(uv_idle_t* handle) {
  ASSERT(handle == &idle_handle);

  idle_cb_called++;
  fprintf(stderr, "idle_cb %d\n", idle_cb_called);
  fflush(stderr);
}
