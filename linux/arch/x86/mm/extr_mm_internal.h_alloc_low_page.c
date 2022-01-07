
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* alloc_low_pages (int) ;

__attribute__((used)) static inline void *alloc_low_page(void)
{
 return alloc_low_pages(1);
}
