
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct factors_request {int parent_rate; int rate; int m; } ;


 int DIV_ROUND_UP (int,int) ;

__attribute__((used)) static void sun9i_a80_get_gt_factors(struct factors_request *req)
{
 u32 div;

 if (req->parent_rate < req->rate)
  req->rate = req->parent_rate;

 div = DIV_ROUND_UP(req->parent_rate, req->rate);


 if (div > 4)
  div = 4;

 req->rate = req->parent_rate / div;
 req->m = div;
}
