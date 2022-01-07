
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct factors_request {int parent_rate; int rate; int p; int m; } ;


 int DIV_ROUND_UP (int,int) ;
 int order_base_2 (int) ;

__attribute__((used)) static void sun9i_a80_get_apb1_factors(struct factors_request *req)
{
 u32 div;

 if (req->parent_rate < req->rate)
  req->rate = req->parent_rate;

 div = DIV_ROUND_UP(req->parent_rate, req->rate);


 if (div > 256)
  div = 256;

 req->p = order_base_2(div);
 req->m = (req->parent_rate >> req->p) - 1;
 req->rate = (req->parent_rate >> req->p) / (req->m + 1);
}
