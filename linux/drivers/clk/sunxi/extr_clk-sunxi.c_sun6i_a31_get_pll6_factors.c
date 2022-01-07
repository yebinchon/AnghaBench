
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct factors_request {int rate; int parent_rate; int k; scalar_t__ n; } ;


 scalar_t__ DIV_ROUND_UP (int,int) ;

__attribute__((used)) static void sun6i_a31_get_pll6_factors(struct factors_request *req)
{
 u8 div;


 div = req->rate / req->parent_rate;
 req->rate = req->parent_rate * div;

 req->k = div / 32;
 if (req->k > 3)
  req->k = 3;

 req->n = DIV_ROUND_UP(div, (req->k + 1)) - 1;
}
