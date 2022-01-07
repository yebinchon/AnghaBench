
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delete_user_word (int,int ) ;
 int field_value_hash (int,int) ;

inline void user_clear_field (int uid, int field_id, int old_value) {
  if (old_value != 0) {
    delete_user_word (uid, field_value_hash (field_id, old_value));
  }
}
