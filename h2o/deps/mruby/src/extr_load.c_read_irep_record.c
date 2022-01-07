
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int mrb_state ;
struct TYPE_4__ {int rlen; struct TYPE_4__** reps; } ;
typedef TYPE_1__ mrb_irep ;


 TYPE_1__* read_irep_record_1 (int *,int const*,size_t*,int ) ;

__attribute__((used)) static mrb_irep*
read_irep_record(mrb_state *mrb, const uint8_t *bin, size_t *len, uint8_t flags)
{
  mrb_irep *irep = read_irep_record_1(mrb, bin, len, flags);
  int i;

  if (irep == ((void*)0)) {
    return ((void*)0);
  }

  bin += *len;
  for (i=0; i<irep->rlen; i++) {
    size_t rlen;

    irep->reps[i] = read_irep_record(mrb, bin, &rlen, flags);
    if (irep->reps[i] == ((void*)0)) {
      return ((void*)0);
    }
    bin += rlen;
    *len += rlen;
  }
  return irep;
}
