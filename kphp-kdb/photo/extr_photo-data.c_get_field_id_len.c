
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int field_i; TYPE_1__* fields; } ;
typedef TYPE_2__ type_desc ;
struct TYPE_4__ {scalar_t__* name; } ;


 int strncmp (scalar_t__*,char*,int) ;

int get_field_id_len (type_desc *t, char *s, int s_len) {
  int i;
  for (i = 0; i < t->field_i; i++) {
    if (!strncmp (t->fields[i].name, s, s_len) && t->fields[i].name[s_len] == 0) {
      return i;
    }
  }

  return -1;
}
