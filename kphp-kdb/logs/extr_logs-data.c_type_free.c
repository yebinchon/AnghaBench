
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int field_i; int field_n; TYPE_3__* fields; int name; } ;
typedef TYPE_1__ type_desc ;
typedef int field_desc ;
struct TYPE_5__ {int name; } ;


 int FN ;
 int dl_free (TYPE_3__*,int) ;
 int dl_strfree (int ) ;

void type_free (type_desc *t) {
  dl_strfree (t->name);
  int j;
  for (j = 0; j < t->field_i; j++) {
    dl_strfree (t->fields[j].name);
  }
  dl_free (t->fields - FN, sizeof (field_desc) * (t->field_n + FN));
}
