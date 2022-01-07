
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vas_window {void* uwc_map; void* hvwc_map; } ;


 int get_hvwc_mmio_bar (struct vas_window*,int *,int*) ;
 int get_uwc_mmio_bar (struct vas_window*,int *,int*) ;
 void* map_mmio_region (char*,int ,int) ;
 int unmap_winctx_mmio_bars (struct vas_window*) ;

int map_winctx_mmio_bars(struct vas_window *window)
{
 int len;
 u64 start;

 get_hvwc_mmio_bar(window, &start, &len);
 window->hvwc_map = map_mmio_region("HVWCM_Window", start, len);

 get_uwc_mmio_bar(window, &start, &len);
 window->uwc_map = map_mmio_region("UWCM_Window", start, len);

 if (!window->hvwc_map || !window->uwc_map) {
  unmap_winctx_mmio_bars(window);
  return -1;
 }

 return 0;
}
