
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fast_clear_page (void*) ;
 int in_interrupt () ;
 int slow_zero_page (void*) ;
 scalar_t__ unlikely (int ) ;

void mmx_clear_page(void *page)
{
 if (unlikely(in_interrupt()))
  slow_zero_page(page);
 else
  fast_clear_page(page);
}
