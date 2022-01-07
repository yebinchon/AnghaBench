
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {int io_size; scalar_t__ addr; } ;


 int iounmap (scalar_t__) ;
 int mem_region_cleanup (struct si_sm_io*,int ) ;

__attribute__((used)) static void mem_cleanup(struct si_sm_io *io)
{
 if (io->addr) {
  iounmap(io->addr);
  mem_region_cleanup(io, io->io_size);
 }
}
