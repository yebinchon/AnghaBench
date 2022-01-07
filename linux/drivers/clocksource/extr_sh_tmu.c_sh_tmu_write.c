
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_tmu_channel {scalar_t__ base; TYPE_1__* tmu; } ;
struct TYPE_2__ {int model; int mapbase; } ;




 int TCR ;
 int TSTR ;
 int iowrite16 (unsigned long,scalar_t__) ;
 int iowrite32 (unsigned long,scalar_t__) ;
 void iowrite8 (unsigned long,int ) ;

__attribute__((used)) static inline void sh_tmu_write(struct sh_tmu_channel *ch, int reg_nr,
    unsigned long value)
{
 unsigned long offs;

 if (reg_nr == TSTR) {
  switch (ch->tmu->model) {
  case 128:
   return iowrite8(value, ch->tmu->mapbase + 2);
  case 129:
   return iowrite8(value, ch->tmu->mapbase + 4);
  }
 }

 offs = reg_nr << 2;

 if (reg_nr == TCR)
  iowrite16(value, ch->base + offs);
 else
  iowrite32(value, ch->base + offs);
}
