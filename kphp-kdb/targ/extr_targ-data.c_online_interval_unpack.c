
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int olist_t ;


 int * OHead ;
 int OLIST_COUNT ;
 int ocur_now ;
 int online_convert_time (int) ;
 int online_list_unpack (int*,int *) ;

int online_interval_unpack (int *A, int bt, int et) {
  if (bt > et || bt > ocur_now) {
    return 0;
  }
  int i;
  int *PA = A;
  int bp = online_convert_time (bt);
  int ep = online_convert_time (et);
  if (bp <= ep) {
    for (i = bp; i <= ep; i++) {
      A += online_list_unpack (A, (olist_t *)&OHead[i]);
    }
  } else {
    for (i = bp; i < OLIST_COUNT; i++) {
      A += online_list_unpack (A, (olist_t *)&OHead[i]);
    }
    for (i = 0; i <= ep; i++) {
      A += online_list_unpack (A, (olist_t *)&OHead[i]);
    }
  }
  return A - PA;
}
