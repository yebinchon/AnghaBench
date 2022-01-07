
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct factors_request {int parent_rate; int rate; int p; } ;


 int DIV_ROUND_UP (int,int) ;
 int order_base_2 (int ) ;

__attribute__((used)) static void sun9i_a80_get_ahb_factors(struct factors_request *req)
{
 u32 _p;

 if (req->parent_rate < req->rate)
  req->rate = req->parent_rate;

 _p = order_base_2(DIV_ROUND_UP(req->parent_rate, req->rate));


 if (_p > 3)
  _p = 3;

 req->rate = req->parent_rate >> _p;
 req->p = _p;
}
