
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * UserMsgDel ;
 int * UserMsgExtras ;
 int assert (int) ;
 int conv_uid (int) ;
 int current_extra_mask ;
 int discarded_rec ;
 scalar_t__ extra_mask_intcount (int) ;

void adjust_message0 (int user_id, int local_id, int flags, int op, int *extra) {
  int uid = conv_uid (user_id);
  if (uid < 0 || local_id <= 0) {
    discarded_rec++;
    return;
  }
  UserMsgDel[uid]++;
  if (extra) {
    assert (!(flags & ~current_extra_mask) && flags);
    UserMsgExtras[uid] += extra_mask_intcount (flags & current_extra_mask);
  }
}
