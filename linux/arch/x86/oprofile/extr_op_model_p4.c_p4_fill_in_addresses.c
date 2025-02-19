
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct op_msrs {TYPE_2__* controls; TYPE_1__* counters; } ;
struct TYPE_10__ {int x86_model; } ;
struct TYPE_9__ {int enabled; } ;
struct TYPE_8__ {unsigned int counter_address; unsigned int cccr_address; } ;
struct TYPE_7__ {unsigned int addr; } ;
struct TYPE_6__ {unsigned int addr; } ;


 int EBUSY ;
 unsigned int MSR_P4_BSU_ESCR0 ;
 unsigned int MSR_P4_BSU_ESCR1 ;
 unsigned int MSR_P4_CRU_ESCR3 ;
 unsigned int MSR_P4_CRU_ESCR4 ;
 unsigned int MSR_P4_CRU_ESCR5 ;
 unsigned int MSR_P4_IQ_ESCR0 ;
 unsigned int MSR_P4_IQ_ESCR1 ;
 unsigned int MSR_P4_IX_ESCR0 ;
 unsigned int MSR_P4_MS_ESCR0 ;
 unsigned int MSR_P4_RAT_ESCR0 ;
 unsigned int MSR_P4_SSU_ESCR0 ;
 unsigned int MSR_P4_TC_ESCR1 ;
 unsigned int NUM_COUNTERS_NON_HT ;
 size_t VIRT_CTR (unsigned int,unsigned int) ;
 scalar_t__ addr_increment () ;
 TYPE_5__ boot_cpu_data ;
 TYPE_4__* counter_config ;
 unsigned int get_stagger () ;
 unsigned int num_counters ;
 int op_x86_warn_reserved (unsigned int) ;
 TYPE_3__* p4_counters ;
 int p4_shutdown (struct op_msrs* const) ;
 scalar_t__ reserve_evntsel_nmi (unsigned int) ;
 scalar_t__ reserve_perfctr_nmi (unsigned int) ;
 int setup_num_counters () ;

__attribute__((used)) static int p4_fill_in_addresses(struct op_msrs * const msrs)
{
 unsigned int i;
 unsigned int addr, cccraddr, stag;

 setup_num_counters();
 stag = get_stagger();


 for (i = 0; i < num_counters; ++i) {
  addr = p4_counters[VIRT_CTR(stag, i)].counter_address;
  cccraddr = p4_counters[VIRT_CTR(stag, i)].cccr_address;
  if (reserve_perfctr_nmi(addr)) {
   msrs->counters[i].addr = addr;
   msrs->controls[i].addr = cccraddr;
  }
 }


 for (addr = MSR_P4_BSU_ESCR0 + stag;
      addr < MSR_P4_IQ_ESCR0; ++i, addr += addr_increment()) {
  if (reserve_evntsel_nmi(addr))
   msrs->controls[i].addr = addr;
 }



 if (boot_cpu_data.x86_model >= 0x3) {
  for (addr = MSR_P4_BSU_ESCR0 + stag;
       addr <= MSR_P4_BSU_ESCR1; ++i, addr += addr_increment()) {
   if (reserve_evntsel_nmi(addr))
    msrs->controls[i].addr = addr;
  }
 } else {
  for (addr = MSR_P4_IQ_ESCR0 + stag;
       addr <= MSR_P4_IQ_ESCR1; ++i, addr += addr_increment()) {
   if (reserve_evntsel_nmi(addr))
    msrs->controls[i].addr = addr;
  }
 }

 for (addr = MSR_P4_RAT_ESCR0 + stag;
      addr <= MSR_P4_SSU_ESCR0; ++i, addr += addr_increment()) {
  if (reserve_evntsel_nmi(addr))
   msrs->controls[i].addr = addr;
 }

 for (addr = MSR_P4_MS_ESCR0 + stag;
      addr <= MSR_P4_TC_ESCR1; ++i, addr += addr_increment()) {
  if (reserve_evntsel_nmi(addr))
   msrs->controls[i].addr = addr;
 }

 for (addr = MSR_P4_IX_ESCR0 + stag;
      addr <= MSR_P4_CRU_ESCR3; ++i, addr += addr_increment()) {
  if (reserve_evntsel_nmi(addr))
   msrs->controls[i].addr = addr;
 }



 if (num_counters == NUM_COUNTERS_NON_HT) {

  if (reserve_evntsel_nmi(MSR_P4_CRU_ESCR5))
   msrs->controls[i++].addr = MSR_P4_CRU_ESCR5;
  if (reserve_evntsel_nmi(MSR_P4_CRU_ESCR4))
   msrs->controls[i++].addr = MSR_P4_CRU_ESCR4;

 } else if (stag == 0) {


  if (reserve_evntsel_nmi(MSR_P4_CRU_ESCR4))
   msrs->controls[i++].addr = MSR_P4_CRU_ESCR4;

 } else {


  if (reserve_evntsel_nmi(MSR_P4_CRU_ESCR5)) {
   msrs->controls[i++].addr = MSR_P4_CRU_ESCR5;
   msrs->controls[i++].addr = MSR_P4_CRU_ESCR5;
  }
 }

 for (i = 0; i < num_counters; ++i) {
  if (!counter_config[i].enabled)
   continue;
  if (msrs->controls[i].addr)
   continue;
  op_x86_warn_reserved(i);
  p4_shutdown(msrs);
  return -EBUSY;
 }

 return 0;
}
