
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int packet_trace_prefix ;
 int xstrdup (char const*) ;

void packet_trace_identity(const char *prog)
{
 packet_trace_prefix = xstrdup(prog);
}
