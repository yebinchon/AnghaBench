
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char value_t ;
struct lev_set_value_long {char value; } ;
struct lev_set_value {char value; } ;
struct lev_generic {int dummy; } ;
struct lev_del_entry {int dummy; } ;
typedef int object_id_t ;
typedef int list_id_t ;


 int FIRST_INT (int ) ;
 scalar_t__ LEV_ADJUST_LO (struct lev_set_value*) ;
 scalar_t__ LEV_LI_INCR_VALUE ;
 scalar_t__ LEV_LI_INCR_VALUE_LONG ;
 scalar_t__ LEV_LI_INCR_VALUE_TINY ;
 scalar_t__ LEV_LI_SET_VALUE ;
 scalar_t__ LEV_LI_SET_VALUE_LONG ;
 struct lev_set_value* alloc_log_event (scalar_t__,scalar_t__,int ) ;
 scalar_t__ conv_list_id (int ) ;
 scalar_t__ lev_list_object_bytes ;
 scalar_t__ metafile_mode ;
 scalar_t__ prepare_list_metafile (int ,int) ;
 long long set_incr_entry_value (int ,int ,char,int,struct lev_generic*) ;
 int upcopy_list_object_id (struct lev_set_value*,int ,int ) ;

long long do_change_entry_value (list_id_t list_id, object_id_t object_id, value_t value, int incr) {
  if (conv_list_id (list_id) < 0) {
    return -1LL << 63;
  }
  if (metafile_mode && prepare_list_metafile (list_id, 1) < 0) {
    return -1LL << 63;
  }
  struct lev_set_value *E;
  if (incr && value == (signed char) value) {
    E = alloc_log_event (LEV_LI_INCR_VALUE_TINY + (value & 0xff), sizeof (struct lev_del_entry) + lev_list_object_bytes, FIRST_INT (list_id));





  } else {
    E = alloc_log_event (incr ? LEV_LI_INCR_VALUE : LEV_LI_SET_VALUE, sizeof (struct lev_set_value) + lev_list_object_bytes, FIRST_INT (list_id));
    ((struct lev_set_value *) LEV_ADJUST_LO (E))->value = value;
  }

  upcopy_list_object_id (E, list_id, object_id);
  return set_incr_entry_value (list_id, object_id, value, incr, (struct lev_generic *)E);
}
