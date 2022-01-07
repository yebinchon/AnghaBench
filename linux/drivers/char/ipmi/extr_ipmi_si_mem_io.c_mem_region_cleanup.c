
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {unsigned long addr_data; int regspacing; int regsize; } ;


 int release_mem_region (unsigned long,int ) ;

__attribute__((used)) static void mem_region_cleanup(struct si_sm_io *io, int num)
{
 unsigned long addr = io->addr_data;
 int idx;

 for (idx = 0; idx < num; idx++)
  release_mem_region(addr + idx * io->regspacing,
       io->regsize);
}
