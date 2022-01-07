
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct text_poke_loc {void* addr; scalar_t__ detour; } ;
struct pt_regs {unsigned long ip; } ;
typedef int int3 ;
struct TYPE_2__ {int nr_entries; struct text_poke_loc* vec; } ;


 TYPE_1__ bp_patching ;
 struct text_poke_loc* bsearch (void*,struct text_poke_loc*,int,int,int ) ;
 scalar_t__ likely (int) ;
 int patch_cmp ;
 int smp_rmb () ;
 scalar_t__ unlikely (int) ;
 scalar_t__ user_mode (struct pt_regs*) ;

int poke_int3_handler(struct pt_regs *regs)
{
 struct text_poke_loc *tp;
 unsigned char int3 = 0xcc;
 void *ip;
 smp_rmb();

 if (likely(!bp_patching.nr_entries))
  return 0;

 if (user_mode(regs))
  return 0;




 ip = (void *) regs->ip - sizeof(int3);




 if (unlikely(bp_patching.nr_entries > 1)) {
  tp = bsearch(ip, bp_patching.vec, bp_patching.nr_entries,
        sizeof(struct text_poke_loc),
        patch_cmp);
  if (!tp)
   return 0;
 } else {
  tp = bp_patching.vec;
  if (tp->addr != ip)
   return 0;
 }


 regs->ip = (unsigned long) tp->detour;

 return 1;
}
