
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int idle_1_close_cb_called ;
 int stderr ;

__attribute__((used)) static void idle_1_close_cb(uv_handle_t* handle) {
  fprintf(stderr, "%s", "IDLE_1_CLOSE_CB\n");
  fflush(stderr);

  ASSERT(handle != ((void*)0));

  idle_1_close_cb_called++;
}
