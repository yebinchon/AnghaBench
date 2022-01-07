
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct factors_request {int rate; int parent_rate; int m; } ;


 int DIV_ROUND_UP (int,int) ;

__attribute__((used)) static void sun6i_display_factors(struct factors_request *req)
{
 u8 m;

 if (req->rate > req->parent_rate)
  req->rate = req->parent_rate;

 m = DIV_ROUND_UP(req->parent_rate, req->rate);

 req->rate = req->parent_rate / m;
 req->m = m - 1;
}
