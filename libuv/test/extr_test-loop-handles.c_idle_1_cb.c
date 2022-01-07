
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_idle_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int idle_1_cb_called ;
 int idle_2_cb ;
 int idle_2_cb_started ;
 int idle_2_handle ;
 int idle_2_is_active ;
 scalar_t__ idles_1_active ;
 int stderr ;
 int uv_default_loop () ;
 int uv_idle_init (int ,int *) ;
 int uv_idle_start (int *,int ) ;
 int uv_idle_stop (int *) ;
 int uv_is_closing (int *) ;

__attribute__((used)) static void idle_1_cb(uv_idle_t* handle) {
  int r;

  fprintf(stderr, "%s", "IDLE_1_CB\n");
  fflush(stderr);

  ASSERT(handle != ((void*)0));
  ASSERT(idles_1_active > 0);


  if (!idle_2_is_active && !uv_is_closing((uv_handle_t*)&idle_2_handle)) {
    r = uv_idle_init(uv_default_loop(), &idle_2_handle);
    ASSERT(r == 0);
    r = uv_idle_start(&idle_2_handle, idle_2_cb);
    ASSERT(r == 0);
    idle_2_is_active = 1;
    idle_2_cb_started++;
  }

  idle_1_cb_called++;

  if (idle_1_cb_called % 5 == 0) {
    r = uv_idle_stop((uv_idle_t*)handle);
    ASSERT(r == 0);
    idles_1_active--;
  }
}
