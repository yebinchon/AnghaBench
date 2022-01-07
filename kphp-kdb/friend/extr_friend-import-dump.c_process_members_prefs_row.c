
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* I ;
 int PK_gifts ;
 int * S ;
 int adj_rec ;
 int conv_uid (scalar_t__) ;
 size_t me_key ;
 size_t me_member_id ;
 size_t me_value ;
 int output_conv_privacy (int ,scalar_t__,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ user_id ;

void process_members_prefs_row (void) {
  user_id = I[me_member_id];
  int uid = conv_uid (user_id);

  if (uid < 0 || user_id <= 0 || strcmp (S[me_key], "giftsVisible")) {
    return;
  }

  output_conv_privacy (PK_gifts, I[me_value], "*G*A*0/A");

  adj_rec++;
}
