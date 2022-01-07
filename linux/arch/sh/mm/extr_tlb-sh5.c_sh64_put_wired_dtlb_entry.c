
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long long first; unsigned long long step; unsigned long long next; } ;
struct TYPE_4__ {TYPE_1__ dtlb; } ;


 unsigned long long DTLB_FIXED ;
 int EINVAL ;
 int __flush_tlb_slot (unsigned long long) ;
 TYPE_2__* cpu_data ;

int sh64_put_wired_dtlb_entry(unsigned long long entry)
{
 __flush_tlb_slot(entry);
 if (entry <= DTLB_FIXED)
  return -EINVAL;





 if (entry < (cpu_data->dtlb.first - cpu_data->dtlb.step))
  return -EINVAL;


 cpu_data->dtlb.first -= cpu_data->dtlb.step;
 cpu_data->dtlb.next = entry;

 return 0;
}
