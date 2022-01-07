
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value_t ;
struct lev_new_entry_long {int value; } ;
struct lev_new_entry_ext {int value; int extra; } ;
struct lev_new_entry {int dummy; } ;
typedef int object_id_t ;
typedef int list_id_t ;


 int FIRST_INT (int ) ;
 struct lev_new_entry_ext* LEV_ADJUST_LO (struct lev_new_entry_ext*) ;
 int LEV_LI_SET_ENTRY ;
 int LEV_LI_SET_ENTRY_EXT ;
 int LEV_LI_SET_ENTRY_LONG ;
 struct lev_new_entry_ext* alloc_log_event (int,scalar_t__,int ) ;
 int assert (int) ;
 scalar_t__ conv_list_id (int ) ;
 scalar_t__ entry_exists (int ,int ) ;
 scalar_t__ lev_list_object_bytes ;
 int memcpy (int ,int const*,int) ;
 scalar_t__ metafile_mode ;
 scalar_t__ prepare_list_metafile (int ,int) ;
 int set_list_entry (struct lev_new_entry_ext*,int,int) ;
 int upcopy_list_object_id (struct lev_new_entry_ext*,int ,int ) ;

int do_add_list_entry (list_id_t list_id, object_id_t object_id, int mode, int flags, value_t value, const int *extra) {
  assert (mode >= 0 && mode <= 3);
  if (conv_list_id (list_id) < 0 || (flags & -0x100)) {
    return -1;
  }
  if (metafile_mode && mode != 0 && prepare_list_metafile (list_id, 1) < 0) {
    return -2;
  }
  if (extra && !extra[0] && !extra[1] && !extra[2] && !extra[3]) {
    extra = 0;
  }
  if (extra && mode == 1) {
    extra = 0;
  }





  if (mode == 3) {
    mode = 0;
  }

  if (mode == 1 && !entry_exists (list_id, object_id)) {
    return 0;
  }
  if (mode == 2 && entry_exists (list_id, object_id)) {
    return 0;
  }
  struct lev_new_entry_ext *E, *EE;
  int ext;
  if (extra) {
    E = alloc_log_event (LEV_LI_SET_ENTRY_EXT - (mode << 8) + flags, sizeof (struct lev_new_entry_ext) + lev_list_object_bytes, FIRST_INT (list_id));
    upcopy_list_object_id (E, list_id, object_id);
    EE = LEV_ADJUST_LO(E);
    EE->value = value;
    memcpy (EE->extra, extra, 16);
    ext = 0;
  } else {
    E = alloc_log_event (LEV_LI_SET_ENTRY - (mode << 8) + flags, sizeof (struct lev_new_entry) + lev_list_object_bytes, FIRST_INT (list_id));
    upcopy_list_object_id (E, list_id, object_id);
    EE = LEV_ADJUST_LO(E);
    EE->value = value;
    ext = 1;
  }
  return set_list_entry (E, ext, value);
}
