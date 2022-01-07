
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int ptrdiff_t ;
typedef int mrb_state ;
struct TYPE_4__ {scalar_t__ rlen; scalar_t__ nregs; scalar_t__ nlocals; } ;
typedef TYPE_1__ mrb_irep ;


 scalar_t__ get_irep_record_size_1 (int *,TYPE_1__*) ;
 int uint16_to_bin (int ,int *) ;
 int uint32_to_bin (int ,int *) ;

__attribute__((used)) static ptrdiff_t
write_irep_header(mrb_state *mrb, mrb_irep *irep, uint8_t *buf)
{
  uint8_t *cur = buf;

  cur += uint32_to_bin((uint32_t)get_irep_record_size_1(mrb, irep), cur);
  cur += uint16_to_bin((uint16_t)irep->nlocals, cur);
  cur += uint16_to_bin((uint16_t)irep->nregs, cur);
  cur += uint16_to_bin((uint16_t)irep->rlen, cur);

  return cur - buf;
}
