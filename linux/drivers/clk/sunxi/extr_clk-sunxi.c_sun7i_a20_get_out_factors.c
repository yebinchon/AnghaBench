
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct factors_request {int rate; int parent_rate; int m; int p; } ;


 int DIV_ROUND_UP (int,int) ;

__attribute__((used)) static void sun7i_a20_get_out_factors(struct factors_request *req)
{
 u8 div, calcm, calcp;



 if (req->rate > req->parent_rate)
  req->rate = req->parent_rate;

 div = DIV_ROUND_UP(req->parent_rate, req->rate);

 if (div < 32)
  calcp = 0;
 else if (div / 2 < 32)
  calcp = 1;
 else if (div / 4 < 32)
  calcp = 2;
 else
  calcp = 3;

 calcm = DIV_ROUND_UP(div, 1 << calcp);

 req->rate = (req->parent_rate >> calcp) / calcm;
 req->m = calcm - 1;
 req->p = calcp;
}
