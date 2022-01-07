
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long value_t ;
typedef int object_id_t ;
typedef int list_id_t ;


 scalar_t__ do_add_list_entry (int ,int ,int,int,long long,int const*) ;
 long long do_change_entry_value (int ,int ,long long,int) ;
 scalar_t__ entry_exists (int ,int ) ;
 scalar_t__ metafile_mode ;
 scalar_t__ prepare_list_metafile (int ,int) ;

long long do_add_incr_value (list_id_t list_id, object_id_t object_id, int flags, value_t value, const int *extra) {
  if (metafile_mode && prepare_list_metafile (list_id, 1) < 0) {
    return -1LL << 63;
  }
  if (entry_exists (list_id, object_id)) {
    return do_change_entry_value (list_id, object_id, value, 1);
  } else {
    if (do_add_list_entry (list_id, object_id, 2, flags, value, extra) <= 0) {
      return -1LL << 63;
    } else {
      return value;
    }
  }
}
