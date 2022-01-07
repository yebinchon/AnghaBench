
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * AuxCond ;
 int Q_aux_num ;
 int * RX ;
 int * User ;
 int targ_aud_and_mask ;
 int targ_aud_cpv ;
 int targ_aud_position ;
 int targ_aud_xor_mask ;
 int user_cpv_is_enough (int,int ,int ,int ,int ) ;
 scalar_t__ user_matches_condition (int ,int ,int) ;
 int vkprintf (int,char*,int) ;

void scan_targ_aud_user (int uid) {
  long i;
  vkprintf (3, "scan_targ_aud_user(%d)\n", uid);
  int val = user_cpv_is_enough (uid, targ_aud_position, targ_aud_cpv, targ_aud_and_mask, targ_aud_xor_mask);
  for (i = 0; (int) i < Q_aux_num; i++) {
    if (user_matches_condition (User[uid], AuxCond[i], uid)) {
      RX[3*i + 4]++;
      if (val) {
 RX[3*i + 5]++;
      }
    }
  }
  RX[1]++;
  if (val) {
    RX[2]++;
  }
}
