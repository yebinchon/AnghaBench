
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int mrb_state ;
struct TYPE_3__ {int ilen; int iseq; } ;
typedef TYPE_1__ mrb_irep ;
typedef int mrb_code ;


 int memcpy (int *,int ,int) ;
 int uint32_to_bin (int,int *) ;
 int write_padding (int *) ;

__attribute__((used)) static ptrdiff_t
write_iseq_block(mrb_state *mrb, mrb_irep *irep, uint8_t *buf, uint8_t flags)
{
  uint8_t *cur = buf;

  cur += uint32_to_bin(irep->ilen, cur);
  cur += write_padding(cur);
  memcpy(cur, irep->iseq, irep->ilen * sizeof(mrb_code));
  cur += irep->ilen * sizeof(mrb_code);

  return cur - buf;
}
