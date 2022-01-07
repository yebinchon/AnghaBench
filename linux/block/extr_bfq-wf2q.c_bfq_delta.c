
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int WFQ_SERVICE_SHIFT ;
 int do_div (int,unsigned long) ;

__attribute__((used)) static u64 bfq_delta(unsigned long service, unsigned long weight)
{
 u64 d = (u64)service << WFQ_SERVICE_SHIFT;

 do_div(d, weight);
 return d;
}
