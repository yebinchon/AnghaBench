
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int mrb_state ;
struct TYPE_4__ {int rlen; struct TYPE_4__** reps; } ;
typedef TYPE_1__ mrb_irep ;


 int MRB_DUMP_OK ;
 int read_lineno_record_1 (int *,int const*,TYPE_1__*,size_t*) ;

__attribute__((used)) static int
read_lineno_record(mrb_state *mrb, const uint8_t *bin, mrb_irep *irep, size_t *lenp)
{
  int result = read_lineno_record_1(mrb, bin, irep, lenp);
  int i;

  if (result != MRB_DUMP_OK) return result;
  for (i = 0; i < irep->rlen; i++) {
    size_t len;

    result = read_lineno_record(mrb, bin, irep->reps[i], &len);
    if (result != MRB_DUMP_OK) break;
    bin += len;
    *lenp += len;
  }
  return result;
}
