
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {unsigned int addr_data; int io_size; int regspacing; int regsize; } ;


 int release_region (unsigned int,int ) ;

__attribute__((used)) static void port_cleanup(struct si_sm_io *io)
{
 unsigned int addr = io->addr_data;
 int idx;

 if (addr) {
  for (idx = 0; idx < io->io_size; idx++)
   release_region(addr + idx * io->regspacing,
           io->regsize);
 }
}
