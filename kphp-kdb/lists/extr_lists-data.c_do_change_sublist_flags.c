
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_sublist_flags {int xor_cond; int and_cond; int and_set; int xor_set; } ;
struct lev_generic {int dummy; } ;
typedef int list_id_t ;


 int FIRST_INT (int ) ;
 struct lev_sublist_flags* LEV_ADJUST_L (struct lev_sublist_flags*) ;
 int LEV_LI_SUBLIST_FLAGS ;
 struct lev_sublist_flags* alloc_log_event (int ,scalar_t__,int ) ;
 int change_sublist_flags (int ,int,struct lev_generic*) ;
 scalar_t__ conv_list_id (int ) ;
 scalar_t__ lev_list_id_bytes ;
 scalar_t__ metafile_mode ;
 scalar_t__ prepare_list_metafile (int ,int) ;
 int upcopy_list_id (struct lev_sublist_flags*,int ) ;

int do_change_sublist_flags (list_id_t list_id, int xor_cond, int and_cond, int and_set, int xor_set) {
  if (conv_list_id (list_id) < 0) {
    return -1;
  }
  if (metafile_mode && prepare_list_metafile (list_id, 1) < 0) {
    return -2;
  }
  struct lev_sublist_flags *EE, *E = alloc_log_event (LEV_LI_SUBLIST_FLAGS, sizeof (struct lev_sublist_flags) + lev_list_id_bytes, FIRST_INT (list_id));
  upcopy_list_id (E, list_id);
  EE = LEV_ADJUST_L(E);
  EE->xor_cond = xor_cond;
  EE->and_cond = and_cond;
  EE->and_set = and_set;
  EE->xor_set = xor_set;
  return change_sublist_flags (list_id, *(int *) &(EE->xor_cond), (struct lev_generic *)E);
}
