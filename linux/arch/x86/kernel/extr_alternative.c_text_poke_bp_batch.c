
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct text_poke_loc {char* addr; int len; char const* opcode; } ;
typedef int int3 ;
struct TYPE_2__ {unsigned int nr_entries; struct text_poke_loc* vec; } ;


 TYPE_1__ bp_patching ;
 int do_sync_core ;
 int lockdep_assert_held (int *) ;
 int on_each_cpu (int ,int *,int) ;
 int smp_wmb () ;
 int text_mutex ;
 int text_poke (char*,...) ;

void text_poke_bp_batch(struct text_poke_loc *tp, unsigned int nr_entries)
{
 int patched_all_but_first = 0;
 unsigned char int3 = 0xcc;
 unsigned int i;

 lockdep_assert_held(&text_mutex);

 bp_patching.vec = tp;
 bp_patching.nr_entries = nr_entries;





 smp_wmb();




 for (i = 0; i < nr_entries; i++)
  text_poke(tp[i].addr, &int3, sizeof(int3));

 on_each_cpu(do_sync_core, ((void*)0), 1);




 for (i = 0; i < nr_entries; i++) {
  if (tp[i].len - sizeof(int3) > 0) {
   text_poke((char *)tp[i].addr + sizeof(int3),
      (const char *)tp[i].opcode + sizeof(int3),
      tp[i].len - sizeof(int3));
   patched_all_but_first++;
  }
 }

 if (patched_all_but_first) {





  on_each_cpu(do_sync_core, ((void*)0), 1);
 }





 for (i = 0; i < nr_entries; i++)
  text_poke(tp[i].addr, tp[i].opcode, sizeof(int3));

 on_each_cpu(do_sync_core, ((void*)0), 1);




 bp_patching.vec = ((void*)0);
 bp_patching.nr_entries = 0;
}
