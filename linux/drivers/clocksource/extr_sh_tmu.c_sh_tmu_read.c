
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_tmu_channel {scalar_t__ base; TYPE_1__* tmu; } ;
struct TYPE_2__ {int model; int mapbase; } ;




 int TCR ;
 int TSTR ;
 unsigned long ioread16 (scalar_t__) ;
 unsigned long ioread32 (scalar_t__) ;
 unsigned long ioread8 (int ) ;

__attribute__((used)) static inline unsigned long sh_tmu_read(struct sh_tmu_channel *ch, int reg_nr)
{
 unsigned long offs;

 if (reg_nr == TSTR) {
  switch (ch->tmu->model) {
  case 128:
   return ioread8(ch->tmu->mapbase + 2);
  case 129:
   return ioread8(ch->tmu->mapbase + 4);
  }
 }

 offs = reg_nr << 2;

 if (reg_nr == TCR)
  return ioread16(ch->base + offs);
 else
  return ioread32(ch->base + offs);
}
