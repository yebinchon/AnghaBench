
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_set_entry_text_long {int len; int text; } ;
struct lev_set_entry_text {int len; int text; } ;
struct lev_generic {int dummy; } ;
typedef int object_id_t ;
typedef int list_id_t ;


 int FIRST_INT (int ) ;
 scalar_t__ LEV_ADJUST_LO (struct lev_set_entry_text_long*) ;
 scalar_t__ LEV_LI_SET_ENTRY_TEXT ;
 scalar_t__ LEV_LI_SET_ENTRY_TEXT_LONG ;
 struct lev_set_entry_text_long* alloc_log_event (scalar_t__,scalar_t__,int ) ;
 scalar_t__ conv_list_id (int ) ;
 scalar_t__ lev_list_object_bytes ;
 unsigned int max_text_len ;
 int memcpy (int ,char const*,int) ;
 scalar_t__ metafile_mode ;
 scalar_t__ prepare_list_metafile (int ,int) ;
 int set_entry_text (int ,int ,char const*,int,struct lev_generic*) ;
 int upcopy_list_object_id (struct lev_set_entry_text_long*,int ,int ) ;

int do_change_entry_text (list_id_t list_id, object_id_t object_id, const char *text, int len) {
  if (conv_list_id (list_id) < 0 || (unsigned) len >= max_text_len) {
    return -1;
  }
  if (metafile_mode && prepare_list_metafile (list_id, 1) < 0) {
    return -2;
  }
  if (len < 256) {
    struct lev_set_entry_text *E = alloc_log_event (LEV_LI_SET_ENTRY_TEXT + len, sizeof (struct lev_set_entry_text) + len + lev_list_object_bytes, FIRST_INT(list_id));
    upcopy_list_object_id (E, list_id, object_id);
    memcpy (((struct lev_set_entry_text *) LEV_ADJUST_LO (E))->text, text, len);
    return set_entry_text (list_id, object_id, text, len, (struct lev_generic *)E);
  } else {
    struct lev_set_entry_text_long *E = alloc_log_event (LEV_LI_SET_ENTRY_TEXT_LONG, sizeof (struct lev_set_entry_text_long) + len + lev_list_object_bytes, FIRST_INT(list_id));
    upcopy_list_object_id (E, list_id, object_id);
    E->len = len;
    memcpy (((struct lev_set_entry_text *) LEV_ADJUST_LO (E))->text, text, len);
    return set_entry_text (list_id, object_id, text, len, (struct lev_generic *)E);
  }
}
