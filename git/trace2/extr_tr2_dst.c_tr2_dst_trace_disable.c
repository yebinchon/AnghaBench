
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr2_dst {int initialized; scalar_t__ need_close; scalar_t__ fd; } ;


 int close (scalar_t__) ;

void tr2_dst_trace_disable(struct tr2_dst *dst)
{
 if (dst->need_close)
  close(dst->fd);
 dst->fd = 0;
 dst->initialized = 1;
 dst->need_close = 0;
}
