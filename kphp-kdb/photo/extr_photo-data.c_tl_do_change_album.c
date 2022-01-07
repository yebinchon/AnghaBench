
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_change_album {scalar_t__ changes_len; int album_id; int user_id; int changes; int mask; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int ALBUM_TYPE ;
 int LEV_PHOTO_CHANGE_ALBUM ;
 scalar_t__ MAX_EVENT_SIZE ;
 int TL_BOOL_FALSE ;
 int TL_BOOL_TRUE ;
 int TL_ERROR_BAD_VALUE ;
 int assert (int) ;
 scalar_t__ check_album_id (int ) ;
 int do_change_data (int ,int ,int ) ;
 scalar_t__ field_changes_n ;
 scalar_t__ location_changes_n ;
 scalar_t__ rpc_get_fields (int ,int ,int ,scalar_t__) ;
 int tl_fetch_set_error_format (int ,char*) ;
 int tl_store_int (int ) ;

int tl_do_change_album (struct tl_act_extra *extra) {
  struct tl_change_album *e = (struct tl_change_album *)extra->extra;

  assert (check_album_id (e->album_id) && 0 < e->changes_len && e->changes_len < MAX_EVENT_SIZE);

  if (rpc_get_fields (ALBUM_TYPE, e->mask, e->changes, e->changes_len) < 0) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Can't parse changes");
    return -1;
  }

  int res = 1;
  if (field_changes_n != 0) {
    res &= do_change_data (e->user_id, e->album_id, LEV_PHOTO_CHANGE_ALBUM);
  }
  assert (location_changes_n == 0);

  tl_store_int (res ? TL_BOOL_TRUE : TL_BOOL_FALSE);
  return 0;
}
