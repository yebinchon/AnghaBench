
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; scalar_t__ l; } ;
struct tl_scheme_object {int type; TYPE_1__ u; } ;


 scalar_t__ INT_MAX ;
 scalar_t__ INT_MIN ;



int tl_scheme_int_value (struct tl_scheme_object *O, int *value) {
  switch (O->type) {
    case 129:
      *value = O->u.i;
      return 0;
    case 128:
      if (INT_MIN <= O->u.l && O->u.l <= INT_MAX) {
        *value = (int) (O->u.l);
        return 0;
      }
    default:
    break;
  }
  return -1;
}
