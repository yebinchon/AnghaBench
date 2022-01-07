
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct factors_request {int rate; int n; int m; int p; } ;


 int DIV_ROUND_UP (int,int) ;

__attribute__((used)) static void sun9i_a80_get_pll4_factors(struct factors_request *req)
{
 int n;
 int m = 1;
 int p = 1;


 n = DIV_ROUND_UP(req->rate, 6000000);


 if (n > 255) {
  m = 0;
  n = (n + 1) / 2;
 }


 if (n > 255) {
  p = 0;
  n = (n + 1) / 2;
 }


 if (n > 255)
  n = 255;
 else if (n < 12)
  n = 12;

 req->rate = ((24000000 * n) >> p) / (m + 1);
 req->n = n;
 req->m = m;
 req->p = p;
}
