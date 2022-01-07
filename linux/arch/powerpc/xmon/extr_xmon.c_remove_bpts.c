
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpt {int enabled; scalar_t__ address; int * instr; } ;


 int BP_CIABR ;
 int BP_TRAP ;
 int NBPTS ;
 unsigned int bpinstr ;
 struct bpt* bpts ;
 int mread (scalar_t__,unsigned int*,int) ;
 scalar_t__ patch_instruction (unsigned int*,int ) ;
 int printf (char*,scalar_t__) ;
 int store_inst (void*) ;

__attribute__((used)) static void remove_bpts(void)
{
 int i;
 struct bpt *bp;
 unsigned instr;

 bp = bpts;
 for (i = 0; i < NBPTS; ++i, ++bp) {
  if ((bp->enabled & (BP_TRAP|BP_CIABR)) != BP_TRAP)
   continue;
  if (mread(bp->address, &instr, 4) == 4
      && instr == bpinstr
      && patch_instruction(
   (unsigned int *)bp->address, bp->instr[0]) != 0)
   printf("Couldn't remove breakpoint at %lx\n",
          bp->address);
  else
   store_inst((void *)bp->address);
 }
}
