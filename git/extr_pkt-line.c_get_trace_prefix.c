
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ in_async () ;
 char const* packet_trace_prefix ;

__attribute__((used)) static const char *get_trace_prefix(void)
{
 return in_async() ? "sideband" : packet_trace_prefix;
}
