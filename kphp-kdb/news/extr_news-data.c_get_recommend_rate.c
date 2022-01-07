
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double* recommend_rate_tbl ;

int get_recommend_rate (int type, int action, double *rate) {
  if (type >= 0 && type < 32 && action >= 0 && action < 256) {
    *rate = recommend_rate_tbl[(type << 8) + action];
    return 0;
  }
  return -1;
}
