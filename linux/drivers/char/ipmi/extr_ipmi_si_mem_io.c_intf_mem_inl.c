
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {unsigned int regspacing; int regshift; scalar_t__ addr; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static unsigned char intf_mem_inl(const struct si_sm_io *io,
      unsigned int offset)
{
 return (readl((io->addr)+(offset * io->regspacing)) >> io->regshift)
  & 0xff;
}
