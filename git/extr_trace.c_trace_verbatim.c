
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_key {int dummy; } ;


 int trace_want (struct trace_key*) ;
 int trace_write (struct trace_key*,void const*,unsigned int) ;

void trace_verbatim(struct trace_key *key, const void *buf, unsigned len)
{
 if (!trace_want(key))
  return;
 trace_write(key, buf, len);
}
