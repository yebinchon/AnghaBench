
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct TYPE_2__ {int cntval_bits; } ;


 unsigned int OVERFLOW_WAIT_COUNT ;
 int rdmsrl (int ,unsigned long long) ;
 int udelay (int) ;
 TYPE_1__ x86_pmu ;
 int x86_pmu_event_addr (int) ;

__attribute__((used)) static void amd_pmu_wait_on_overflow(int idx)
{
 unsigned int i;
 u64 counter;






 for (i = 0; i < OVERFLOW_WAIT_COUNT; i++) {
  rdmsrl(x86_pmu_event_addr(idx), counter);
  if (counter & (1ULL << (x86_pmu.cntval_bits - 1)))
   break;


  udelay(1);
 }
}
