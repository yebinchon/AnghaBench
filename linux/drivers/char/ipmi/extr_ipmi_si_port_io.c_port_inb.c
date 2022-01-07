
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {unsigned int addr_data; unsigned int regspacing; } ;


 unsigned char inb (unsigned int) ;

__attribute__((used)) static unsigned char port_inb(const struct si_sm_io *io, unsigned int offset)
{
 unsigned int addr = io->addr_data;

 return inb(addr + (offset * io->regspacing));
}
