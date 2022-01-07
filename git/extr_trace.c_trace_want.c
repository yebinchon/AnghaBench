
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_key {int dummy; } ;


 int get_trace_fd (struct trace_key*) ;

int trace_want(struct trace_key *key)
{
 return !!get_trace_fd(key);
}
