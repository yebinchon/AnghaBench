
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * reserved; int * active; } ;


 int BUG_ON (int) ;
 int CONFIG_CPU_ASID_BITS ;
 int NUM_ASIDS (TYPE_1__*) ;
 int NUM_CTXT_ASIDS (TYPE_1__*) ;
 int active_asids ;
 scalar_t__ asid_allocator_init (TYPE_1__*,int,int,int ) ;
 int asid_flush_cpu_ctxt ;
 TYPE_1__ asid_info ;
 int num_possible_cpus () ;
 int panic (char*,int ) ;
 int pr_info (char*,int ) ;
 int reserved_asids ;

__attribute__((used)) static int asids_init(void)
{
 BUG_ON(((1 << CONFIG_CPU_ASID_BITS) - 1) <= num_possible_cpus());

 if (asid_allocator_init(&asid_info, CONFIG_CPU_ASID_BITS, 1,
    asid_flush_cpu_ctxt))
  panic("Unable to initialize ASID allocator for %lu ASIDs\n",
        NUM_ASIDS(&asid_info));

 asid_info.active = &active_asids;
 asid_info.reserved = &reserved_asids;

 pr_info("ASID allocator initialised with %lu entries\n",
  NUM_CTXT_ASIDS(&asid_info));

 return 0;
}
