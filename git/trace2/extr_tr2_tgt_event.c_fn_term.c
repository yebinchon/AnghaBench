
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tr2_dst_trace_disable (int *) ;
 int tr2dst_event ;

__attribute__((used)) static void fn_term(void)
{
 tr2_dst_trace_disable(&tr2dst_event);
}
