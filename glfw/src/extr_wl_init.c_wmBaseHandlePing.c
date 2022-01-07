
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdg_wm_base {int dummy; } ;


 int xdg_wm_base_pong (struct xdg_wm_base*,int ) ;

__attribute__((used)) static void wmBaseHandlePing(void* data,
                             struct xdg_wm_base* wmBase,
                             uint32_t serial)
{
    xdg_wm_base_pong(wmBase, serial);
}
