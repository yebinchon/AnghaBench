
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct id {size_t val; scalar_t__ pentry; } ;
struct TYPE_2__ {int * entry; } ;


 struct id* __this_cpu_read (int ) ;
 TYPE_1__ pcpu_sids ;
 scalar_t__ this_cpu_ptr (int *) ;

__attribute__((used)) static inline int local_sid_lookup(struct id *entry)
{
 if (entry && entry->val != 0 &&
     __this_cpu_read(pcpu_sids.entry[entry->val]) == entry &&
     entry->pentry == this_cpu_ptr(&pcpu_sids.entry[entry->val]))
  return entry->val;
 return -1;
}
