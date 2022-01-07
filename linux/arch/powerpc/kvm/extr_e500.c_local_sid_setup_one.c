
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct id {unsigned long val; int pentry; } ;
struct TYPE_2__ {int * entry; } ;


 unsigned long NUM_TIDS ;
 int WARN_ON (int) ;
 unsigned long __this_cpu_inc_return (int ) ;
 int __this_cpu_write (int ,struct id*) ;
 int pcpu_last_used_sid ;
 TYPE_1__ pcpu_sids ;
 int this_cpu_ptr (int *) ;

__attribute__((used)) static inline int local_sid_setup_one(struct id *entry)
{
 unsigned long sid;
 int ret = -1;

 sid = __this_cpu_inc_return(pcpu_last_used_sid);
 if (sid < NUM_TIDS) {
  __this_cpu_write(pcpu_sids.entry[sid], entry);
  entry->val = sid;
  entry->pentry = this_cpu_ptr(&pcpu_sids.entry[sid]);
  ret = sid;
 }
 WARN_ON(sid > NUM_TIDS);

 return ret;
}
