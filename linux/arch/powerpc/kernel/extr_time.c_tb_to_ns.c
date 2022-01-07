
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long mulhdu (unsigned long long,int ) ;
 int tb_to_ns_scale ;
 unsigned long long tb_to_ns_shift ;

unsigned long long tb_to_ns(unsigned long long ticks)
{
 return mulhdu(ticks, tb_to_ns_scale) << tb_to_ns_shift;
}
