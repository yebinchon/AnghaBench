
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long long next; } ;
struct TYPE_4__ {TYPE_1__ dtlb; } ;


 TYPE_2__* cpu_data ;

unsigned long long sh64_next_free_dtlb_entry(void)
{
 return cpu_data->dtlb.next;
}
