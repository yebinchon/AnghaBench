
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vas_window {int * uwc_map; int * hvwc_map; } ;


 int get_hvwc_mmio_bar (struct vas_window*,int *,int*) ;
 int get_uwc_mmio_bar (struct vas_window*,int *,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unmap_region (void*,int ,int) ;
 int vas_mutex ;

__attribute__((used)) static void unmap_winctx_mmio_bars(struct vas_window *window)
{
 int len;
 void *uwc_map;
 void *hvwc_map;
 u64 busaddr_start;

 mutex_lock(&vas_mutex);

 hvwc_map = window->hvwc_map;
 window->hvwc_map = ((void*)0);

 uwc_map = window->uwc_map;
 window->uwc_map = ((void*)0);

 mutex_unlock(&vas_mutex);

 if (hvwc_map) {
  get_hvwc_mmio_bar(window, &busaddr_start, &len);
  unmap_region(hvwc_map, busaddr_start, len);
 }

 if (uwc_map) {
  get_uwc_mmio_bar(window, &busaddr_start, &len);
  unmap_region(uwc_map, busaddr_start, len);
 }
}
