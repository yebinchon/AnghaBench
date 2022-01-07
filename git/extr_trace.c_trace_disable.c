
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_key {int initialized; scalar_t__ need_close; scalar_t__ fd; } ;


 int close (scalar_t__) ;

void trace_disable(struct trace_key *key)
{
 if (key->need_close)
  close(key->fd);
 key->fd = 0;
 key->initialized = 1;
 key->need_close = 0;
}
