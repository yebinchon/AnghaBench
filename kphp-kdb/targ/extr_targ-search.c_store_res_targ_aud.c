
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * AuxCond ;
 int Q_aux_num ;
 int* R ;
 int * RX ;
 int R_cnt ;
 int R_tot ;
 int * User ;
 scalar_t__ user_matches_condition (int ,int ,int) ;
 int vkprintf (int,char*,int) ;

void store_res_targ_aud (int uid) {
  vkprintf (3, "store_res_targ_aud(%d)\n", uid);
  R[R_cnt++] = uid;
  long i;
  for (i = 0; (int) i < Q_aux_num; i++) {
    if (user_matches_condition (User[uid], AuxCond[i], uid)) {
      RX[3*i + 3]++;
    }
  }
  RX[0]++;
  R_tot++;
}
