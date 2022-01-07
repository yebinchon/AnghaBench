
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_sublist_flags {int xor_cond; int and_cond; scalar_t__ xor_set; scalar_t__ and_set; } ;
struct lev_generic {int dummy; } ;
struct lev_del_sublist {int dummy; } ;
typedef int list_id_t ;


 int FIRST_INT (int ) ;
 struct lev_sublist_flags* LEV_ADJUST_L (struct lev_sublist_flags*) ;
 int LEV_LI_DEL_SUBLIST ;
 struct lev_sublist_flags* alloc_log_event (int ,scalar_t__,int ) ;
 scalar_t__ conv_list_id (int ) ;
 int delete_sublist (int ,int,struct lev_generic*) ;
 scalar_t__ lev_list_id_bytes ;
 scalar_t__ metafile_mode ;
 scalar_t__ prepare_list_metafile (int ,int) ;
 int upcopy_list_id (struct lev_sublist_flags*,int ) ;

int do_delete_sublist (list_id_t list_id, int xor_cond, int and_cond) {
  if (conv_list_id (list_id) < 0) {
    return -1;
  }
  if (metafile_mode && prepare_list_metafile (list_id, 1) < 0) {
    return -2;
  }
  struct lev_sublist_flags *EE, *E = alloc_log_event (LEV_LI_DEL_SUBLIST, sizeof (struct lev_del_sublist) + lev_list_id_bytes, FIRST_INT (list_id));
  upcopy_list_id (E, list_id);
  EE = LEV_ADJUST_L(E);
  EE->xor_cond = xor_cond;
  EE->and_cond = and_cond;
  EE->and_set = 0;
  EE->xor_set = 0;
  return delete_sublist (list_id, *(int *) &(EE->xor_cond), (struct lev_generic *)E);
}
