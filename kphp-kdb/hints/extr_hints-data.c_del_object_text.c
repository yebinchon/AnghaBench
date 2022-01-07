
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_hints_del_object_text {int type; scalar_t__ object_id; } ;


 int changes_count ;
 int check_object_id (scalar_t__) ;
 int chg_list_add_string (int *,int *,int,int,int *) ;
 int global_changes_en ;
 int global_changes_st ;
 scalar_t__ no_changes ;
 int ** stat_global ;
 scalar_t__ write_only ;

int del_object_text (struct lev_hints_del_object_text *E) {
  if ((E->type & 0xff) == 0 || !check_object_id (E->object_id)) {
    return 0;
  }

  if (write_only || no_changes) {
    return 1;
  }

  stat_global[E->type & 0xff][0]++;

  chg_list_add_string (&global_changes_st, &global_changes_en, -(E->type & 0xff), (int)E->object_id, ((void*)0));
  changes_count++;

  return 1;
}
