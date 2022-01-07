
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_set_flags {int dummy; } ;
struct lev_generic {int a; } ;
struct lev_change_flags_long {int and_mask; int xor_mask; int type; } ;
typedef int object_id_t ;
typedef int list_id_t ;


 int FIRST_INT (int ) ;
 struct lev_change_flags_long* LEV_ADJUST_LO (struct lev_change_flags_long*) ;
 int LEV_LI_CHANGE_FLAGS_LONG ;
 int set_entry_flags (struct lev_set_flags*) ;
 int upcopy_list_object_id (struct lev_change_flags_long*,int ,int ) ;

int create_change_entry_flags (list_id_t list_id, object_id_t object_id, int and_flags, int xor_flags) {
  static char buf[1024];
  struct lev_change_flags_long *E = (void *)buf;
  E->type = LEV_LI_CHANGE_FLAGS_LONG;
  ((struct lev_generic *)E)->a = FIRST_INT(list_id);
  upcopy_list_object_id (E, list_id, object_id);
  struct lev_change_flags_long *EE = LEV_ADJUST_LO (E);
  EE->and_mask = and_flags;
  EE->xor_mask = xor_flags;
  return set_entry_flags ((struct lev_set_flags *) E);
}
