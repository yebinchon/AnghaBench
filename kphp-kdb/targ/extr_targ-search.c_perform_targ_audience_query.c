
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_aux_num ;
 int Q_limit ;
 int R ;
 scalar_t__ RX ;
 int R_cnt ;
 int R_position ;
 int memcpy (int ,scalar_t__,int) ;
 int memset (scalar_t__,int ,int) ;
 int perform_query (int ) ;
 int postprocess_res ;
 int postprocess_res_targ_aud ;
 int store_res ;
 int store_res_targ_aud ;
 int targ_aud_and_mask ;
 int targ_aud_cpv ;
 int targ_aud_position ;
 int targ_aud_xor_mask ;
 int vkprintf (int,char*,int,int,int,int,int) ;

int perform_targ_audience_query (int position, int cpv, int and_mask, int xor_mask) {
  vkprintf (1, "perform targ_audience query(position=%d, cpv=%d, mask=%d:%d) for %d auxiliary queries\n", position, cpv, and_mask, xor_mask, Q_aux_num);
  if (position <= 0 || position > 100 || Q_limit < 0 || Q_limit > 1000) {
    return -1;
  }
  if (!Q_limit) {
    Q_limit = 50;
  }
  memset (RX, 0, (Q_aux_num + 1) * 12);
  R_position = (-1 << 31);
  store_res = store_res_targ_aud;
  postprocess_res = postprocess_res_targ_aud;
  targ_aud_position = position;
  targ_aud_cpv = cpv;
  targ_aud_and_mask = and_mask;
  targ_aud_xor_mask = xor_mask;
  int res = perform_query (0);
  R_cnt = 3 * Q_aux_num + 2;
  R_position = 0;
  memcpy (R, RX + 1, R_cnt * 4);
  return res;
}
