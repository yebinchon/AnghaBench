
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int CSKYCPU_DEF_NAME ;
 int mfcr (char*) ;
 int mfcr_ccr2 () ;
 int mfcr_hint () ;
 int seq_printf (struct seq_file*,char*,...) ;
 int smp_processor_id () ;

__attribute__((used)) static void percpu_print(void *arg)
{
 struct seq_file *m = (struct seq_file *)arg;
 unsigned int cur, next, i;

 seq_printf(m, "processor       : %d\n", smp_processor_id());
 seq_printf(m, "C-SKY CPU model : %s\n", CSKYCPU_DEF_NAME);


 cur = mfcr("cr13");
 for (i = 0; i < 100; i++) {
  seq_printf(m, "product info[%d] : 0x%08x\n", i, cur);

  next = mfcr("cr13");


  if (cur == next)
   break;

  cur = next;


  if (!(next >> 28)) {
   while ((mfcr("cr13") >> 28) != i);
   break;
  }
 }


 seq_printf(m, "hint (CPU funcs): 0x%08x\n", mfcr_hint());
 seq_printf(m, "ccr  (L1C & MMU): 0x%08x\n", mfcr("cr18"));
 seq_printf(m, "ccr2 (L2C)      : 0x%08x\n", mfcr_ccr2());
 seq_printf(m, "\n");
}
