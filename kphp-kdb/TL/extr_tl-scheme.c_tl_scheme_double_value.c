
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double i; double l; double d; } ;
struct tl_scheme_object {int type; TYPE_1__ u; } ;






int tl_scheme_double_value (struct tl_scheme_object *O, double *value) {
  switch (O->type) {
    case 129:
      *value = O->u.i;
      return 0;
    case 128:
      *value = O->u.l;
      return 0;
    case 130:
      *value = O->u.d;
      return 0;
    default:
    break;
  }
  return -1;
}
