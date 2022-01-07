
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int BIOS_STATUS_SUCCESS ;
 int UV_BIOS_WATCHLIST_ALLOC ;
 scalar_t__ uv_bios_call_irqsave (int ,unsigned long,unsigned int,int,int,int ) ;

int
uv_bios_mq_watchlist_alloc(unsigned long addr, unsigned int mq_size,
      unsigned long *intr_mmr_offset)
{
 u64 watchlist;
 s64 ret;




 ret = (int)uv_bios_call_irqsave(UV_BIOS_WATCHLIST_ALLOC, addr,
   mq_size, (u64)intr_mmr_offset,
   (u64)&watchlist, 0);
 if (ret < BIOS_STATUS_SUCCESS)
  return ret;

 return watchlist;
}
