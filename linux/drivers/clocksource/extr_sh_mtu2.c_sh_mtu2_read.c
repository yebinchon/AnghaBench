
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mtu2_channel {scalar_t__ base; TYPE_1__* mtu; } ;
struct TYPE_2__ {scalar_t__ mapbase; } ;


 int TCNT ;
 int TGR ;
 int TSTR ;
 unsigned long ioread16 (scalar_t__) ;
 unsigned long ioread8 (scalar_t__) ;
 unsigned long* mtu2_reg_offs ;

__attribute__((used)) static inline unsigned long sh_mtu2_read(struct sh_mtu2_channel *ch, int reg_nr)
{
 unsigned long offs;

 if (reg_nr == TSTR)
  return ioread8(ch->mtu->mapbase + 0x280);

 offs = mtu2_reg_offs[reg_nr];

 if ((reg_nr == TCNT) || (reg_nr == TGR))
  return ioread16(ch->base + offs);
 else
  return ioread8(ch->base + offs);
}
