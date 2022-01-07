
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vas_window {int winid; struct vas_instance* vinst; } ;
struct vas_instance {int ida; } ;


 int kfree (struct vas_window*) ;
 int unmap_winctx_mmio_bars (struct vas_window*) ;
 int vas_release_window_id (int *,int) ;
 int vas_window_free_dbgdir (struct vas_window*) ;

__attribute__((used)) static void vas_window_free(struct vas_window *window)
{
 int winid = window->winid;
 struct vas_instance *vinst = window->vinst;

 unmap_winctx_mmio_bars(window);

 vas_window_free_dbgdir(window);

 kfree(window);

 vas_release_window_id(&vinst->ida, winid);
}
