
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* I ;
 scalar_t__ PK_video ;
 int adj_rec ;
 int conv_uid (scalar_t__) ;
 int output_conv_privacy (scalar_t__,scalar_t__,char*) ;
 scalar_t__ user_id ;
 size_t vi_id ;
 size_t vi_owner_id ;
 size_t vi_privacy ;
 size_t vi_user_id ;

void process_videos_priv_row (void) {
  user_id = I[vi_owner_id];
  int uid = conv_uid (user_id);

  if (uid < 0 || user_id <= 0 || user_id != I[vi_user_id] || I[vi_id] <= 0) {
    return;
  }

  output_conv_privacy (PK_video+I[vi_id], I[vi_privacy], "*A*0*G*A/A");

  adj_rec++;
}
