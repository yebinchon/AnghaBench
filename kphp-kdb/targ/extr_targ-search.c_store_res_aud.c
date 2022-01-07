
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * AuxCond ;
 int Q_aux_num ;
 int * R ;
 int R_tot ;
 int * User ;
 scalar_t__ user_matches_condition (int ,int ,int) ;
 int vkprintf (int,char*,int) ;

void store_res_aud (int uid) {
  long i;
  vkprintf (3, "store_res_aud(%d)\n", uid);
  for (i = 0; (int) i < Q_aux_num; i++) {
    if (user_matches_condition (User[uid], AuxCond[i], uid)) {
      R[i]++;
    }
  }
  R_tot++;
}
