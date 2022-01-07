
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* s; } ;
struct tl_scheme_object {int type; TYPE_1__ u; } ;




int tl_scheme_string_value (struct tl_scheme_object *O, char **value) {
  switch (O->type) {
    case 128:
      *value = O->u.s;
       return 0;
    default:
    break;
  }
  return -1;
}
