
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wl_fixed_t ;
typedef int uint32_t ;
struct wl_surface {int dummy; } ;
struct wl_data_offer {int dummy; } ;
struct wl_data_device {int dummy; } ;



__attribute__((used)) static void dataDeviceHandleEnter(void* data,
                                  struct wl_data_device* dataDevice,
                                  uint32_t serial,
                                  struct wl_surface *surface,
                                  wl_fixed_t x,
                                  wl_fixed_t y,
                                  struct wl_data_offer *id)
{
}
