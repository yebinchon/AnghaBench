
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,...) ;

__attribute__((used)) static void
dik_show_trace(unsigned long *sp)
{
 long i = 0;
 printk("Trace:\n");
 while (0x1ff8 & (unsigned long) sp) {
  extern char _stext[], _etext[];
  unsigned long tmp = *sp;
  sp++;
  if (tmp < (unsigned long) &_stext)
   continue;
  if (tmp >= (unsigned long) &_etext)
   continue;
  printk("[<%lx>] %pSR\n", tmp, (void *)tmp);
  if (i > 40) {
   printk(" ...");
   break;
  }
 }
 printk("\n");
}
