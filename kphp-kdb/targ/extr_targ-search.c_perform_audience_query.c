
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_aux_num ;
 int R ;
 int R_cnt ;
 int R_position ;
 int memset (int ,int ,int) ;
 int perform_query (int ) ;
 int postprocess_res ;
 int postprocess_res_std ;
 int store_res ;
 int store_res_aud ;
 int vkprintf (int,char*,int) ;

int perform_audience_query (void) {
  vkprintf (1, "perform audience query() for %d auxiliary queries\n", Q_aux_num);
  memset (R, 0, Q_aux_num * 4);
  R_position = (-1 << 31);
  store_res = store_res_aud;
  postprocess_res = postprocess_res_std;
  int res = perform_query (0);
  R_cnt = Q_aux_num;
  R_position = 0;
  return res;
}
