
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advert {scalar_t__ price; int delta; int g_sump2; int g_sump1; int g_sump0; int lambda; } ;


 int compute_ad_lambda_delta (scalar_t__,int ,int ,int ,int *) ;

__attribute__((used)) static void compute_ad_lambda (struct advert *A) {
  if (A->price <= 0) {
    return;
  }
  A->lambda = compute_ad_lambda_delta (A->price, A->g_sump0, A->g_sump1, A->g_sump2, &A->delta);
}
