
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advert {long long l_clicked_old; long long l_views; long long l_sump0; long long l_sump1; long long l_sump2; } ;


 struct advert* get_ad_f (int,int ) ;

int compute_ad_ctr (int ad_id, long long *res) {
  struct advert *A = get_ad_f (ad_id, 0);
  if (!A) { return 0; }
  res[0] = A->l_clicked_old;
  res[1] = A->l_views;
  res[2] = A->l_sump0 * (1LL << 32) + 0.5;
  res[3] = A->l_sump1 * (1LL << 32) + 0.5;
  res[4] = A->l_sump2 * (1LL << 32) + 0.5;
  return 5;
}
