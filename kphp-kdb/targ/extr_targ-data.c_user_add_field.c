
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_user_word (int,int ) ;
 int field_value_hash (int,int) ;

inline void user_add_field (int uid, int field_id, int new_value) {
  if (new_value != 0) {
    add_user_word (uid, field_value_hash (field_id, new_value));
  }
}
