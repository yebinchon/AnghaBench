
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fn; int * f; int tp; } ;
typedef TYPE_1__ my_change ;
typedef int field ;
typedef int data ;


 int assert (int) ;
 int ch_fields ;
 int data_add_change (int *,TYPE_1__*,int) ;

inline int user_change_data_lid (data *d, int lid, field *field_changes, int field_changes_n) {


  assert (d != ((void*)0) && lid >= 0);

  my_change ch;
  ch.tp = ch_fields;
  ch.f = field_changes;
  ch.fn = field_changes_n;


  return data_add_change (d, &ch, lid);
}
