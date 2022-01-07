
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV_BIOS_WATCHLIST_FREE ;
 scalar_t__ uv_bios_call_irqsave (int ,int,int,int ,int ,int ) ;

int
uv_bios_mq_watchlist_free(int blade, int watchlist_num)
{
 return (int)uv_bios_call_irqsave(UV_BIOS_WATCHLIST_FREE,
    blade, watchlist_num, 0, 0, 0);
}
