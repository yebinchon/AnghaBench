
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpt {unsigned long address; scalar_t__ enabled; } ;


 int NBPTS ;
 struct bpt* bpts ;

__attribute__((used)) static struct bpt *at_breakpoint(unsigned long pc)
{
 int i;
 struct bpt *bp;

 bp = bpts;
 for (i = 0; i < NBPTS; ++i, ++bp)
  if (bp->enabled && pc == bp->address)
   return bp;
 return ((void*)0);
}
