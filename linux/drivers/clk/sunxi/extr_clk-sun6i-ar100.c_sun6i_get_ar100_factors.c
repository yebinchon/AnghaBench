
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct factors_request {int rate; int parent_rate; unsigned long m; int p; } ;


 unsigned long DIV_ROUND_UP (int,int) ;

__attribute__((used)) static void sun6i_get_ar100_factors(struct factors_request *req)
{
 unsigned long div;
 int shift;


 if (req->rate > req->parent_rate)
  req->rate = req->parent_rate;

 div = DIV_ROUND_UP(req->parent_rate, req->rate);

 if (div < 32)
  shift = 0;
 else if (div >> 1 < 32)
  shift = 1;
 else if (div >> 2 < 32)
  shift = 2;
 else
  shift = 3;

 div >>= shift;

 if (div > 32)
  div = 32;

 req->rate = (req->parent_rate >> shift) / div;
 req->m = div - 1;
 req->p = shift;
}
