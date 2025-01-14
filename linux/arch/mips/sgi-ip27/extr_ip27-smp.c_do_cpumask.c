
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int nasid_t ;
struct TYPE_12__ {scalar_t__ brd_nasid; } ;
typedef TYPE_2__ lboard_t ;
typedef int klinfo_t ;
struct TYPE_11__ {size_t virtid; int flags; } ;
struct TYPE_13__ {TYPE_1__ cpu_info; } ;
typedef TYPE_3__ klcpu_t ;
typedef size_t cpuid_t ;
typedef int cnodeid_t ;


 TYPE_2__* KLCF_NEXT (TYPE_2__*) ;
 int KLINFO_ENABLE ;
 int KLSTRUCT_CPU ;
 int KLTYPE_IP27 ;
 scalar_t__ KL_CONFIG_INFO (int ) ;
 int NR_CPUS ;
 int alloc_cpupda (size_t,int) ;
 int * cpuid_to_compact_node ;
 scalar_t__ find_component (TYPE_2__*,int *,int ) ;
 scalar_t__ find_first_component (TYPE_2__*,int ) ;
 TYPE_2__* find_lboard (TYPE_2__*,int ) ;
 scalar_t__ get_actual_nasid (TYPE_2__*) ;
 int set_cpu_possible (size_t,int) ;

__attribute__((used)) static int do_cpumask(cnodeid_t cnode, nasid_t nasid, int highest)
{
 static int tot_cpus_found = 0;
 lboard_t *brd;
 klcpu_t *acpu;
 int cpus_found = 0;
 cpuid_t cpuid;

 brd = find_lboard((lboard_t *)KL_CONFIG_INFO(nasid), KLTYPE_IP27);

 do {
  acpu = (klcpu_t *)find_first_component(brd, KLSTRUCT_CPU);
  while (acpu) {
   cpuid = acpu->cpu_info.virtid;

   if (get_actual_nasid(brd) == brd->brd_nasid)
    cpuid_to_compact_node[cpuid] = cnode;
   if (cpuid > highest)
    highest = cpuid;

   if ((acpu->cpu_info.flags & KLINFO_ENABLE) &&
       (tot_cpus_found != NR_CPUS)) {
    set_cpu_possible(cpuid, 1);
    alloc_cpupda(cpuid, tot_cpus_found);
    cpus_found++;
    tot_cpus_found++;
   }
   acpu = (klcpu_t *)find_component(brd, (klinfo_t *)acpu,
        KLSTRUCT_CPU);
  }
  brd = KLCF_NEXT(brd);
  if (!brd)
   break;

  brd = find_lboard(brd, KLTYPE_IP27);
 } while (brd);

 return highest;
}
