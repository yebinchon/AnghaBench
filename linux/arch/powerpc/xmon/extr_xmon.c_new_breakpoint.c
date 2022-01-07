
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpt {unsigned long address; int * instr; int ref_count; int enabled; } ;


 size_t NBPTS ;
 struct bpt* at_breakpoint (unsigned long) ;
 scalar_t__ atomic_read (int *) ;
 int bpinstr ;
 struct bpt* bpts ;
 int printf (char*) ;
 int store_inst (int *) ;

__attribute__((used)) static struct bpt *new_breakpoint(unsigned long a)
{
 struct bpt *bp;

 a &= ~3UL;
 bp = at_breakpoint(a);
 if (bp)
  return bp;

 for (bp = bpts; bp < &bpts[NBPTS]; ++bp) {
  if (!bp->enabled && atomic_read(&bp->ref_count) == 0) {
   bp->address = a;
   bp->instr[1] = bpinstr;
   store_inst(&bp->instr[1]);
   return bp;
  }
 }

 printf("Sorry, no free breakpoints.  Please clear one first.\n");
 return ((void*)0);
}
