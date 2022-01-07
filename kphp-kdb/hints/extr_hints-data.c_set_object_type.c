
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_hints_set_object_type {int type; scalar_t__ object_id; } ;


 int changes_count ;
 int check_object_id (scalar_t__) ;
 int chg_list_add_int (int *,int *,int,int,int) ;
 int global_changes_en ;
 int global_changes_st ;
 scalar_t__ no_changes ;
 int ** stat_global ;
 scalar_t__ write_only ;

int set_object_type (struct lev_hints_set_object_type *E) {
  int object_type = (E->type >> 8) & 255;
  int new_object_type = E->type & 255;
  if (!check_object_id (E->object_id) || object_type == 0 || new_object_type == 0) {
    return 0;
  }

  if (write_only || no_changes || object_type == new_object_type) {
    return 1;
  }

  stat_global[object_type][2]++;

  chg_list_add_int (&global_changes_st, &global_changes_en, object_type + 256, (int)E->object_id, new_object_type);
  changes_count++;

  return 1;
}
