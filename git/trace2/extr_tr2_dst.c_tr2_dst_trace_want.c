
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr2_dst {int dummy; } ;


 int tr2_dst_get_trace_fd (struct tr2_dst*) ;

int tr2_dst_trace_want(struct tr2_dst *dst)
{
 return !!tr2_dst_get_trace_fd(dst);
}
