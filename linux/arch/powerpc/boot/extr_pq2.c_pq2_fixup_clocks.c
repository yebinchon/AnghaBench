
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pq2_get_clocks (int ,int *,int *,int *,int *) ;
 int pq2_set_clocks (int ,int ,int ,int ) ;

int pq2_fixup_clocks(u32 crystal)
{
 u32 sysfreq, corefreq, timebase, brgfreq;

 if (!pq2_get_clocks(crystal, &sysfreq, &corefreq, &timebase, &brgfreq))
  return 0;

 pq2_set_clocks(sysfreq, corefreq, timebase, brgfreq);
 return 1;
}
