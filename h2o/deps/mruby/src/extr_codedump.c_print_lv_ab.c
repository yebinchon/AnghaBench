
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int mrb_state ;
struct TYPE_4__ {scalar_t__ nlocals; int lv; } ;
typedef TYPE_1__ mrb_irep ;


 int print_r (int *,TYPE_1__*,scalar_t__) ;
 int printf (char*) ;

__attribute__((used)) static void
print_lv_ab(mrb_state *mrb, mrb_irep *irep, uint16_t a, uint16_t b)
{
  if (!irep->lv || (a >= irep->nlocals && b >= irep->nlocals) || a+b == 0) {
    printf("\n");
    return;
  }
  printf("\t;");
  if (a > 0) print_r(mrb, irep, a);
  if (b > 0) print_r(mrb, irep, b);
  printf("\n");
}
