
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct factors_request {int rate; int parent_rate; int k; int n; } ;


 int DIV_ROUND_UP (int,int) ;

__attribute__((used)) static void sun4i_get_pll5_factors(struct factors_request *req)
{
 u8 div;


 div = req->rate / req->parent_rate;
 req->rate = req->parent_rate * div;

 if (div < 31)
  req->k = 0;
 else if (div / 2 < 31)
  req->k = 1;
 else if (div / 3 < 31)
  req->k = 2;
 else
  req->k = 3;

 req->n = DIV_ROUND_UP(div, (req->k + 1));
}
