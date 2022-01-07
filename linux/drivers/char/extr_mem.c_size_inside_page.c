
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 unsigned long min (unsigned long,unsigned long) ;

__attribute__((used)) static inline unsigned long size_inside_page(unsigned long start,
          unsigned long size)
{
 unsigned long sz;

 sz = PAGE_SIZE - (start & (PAGE_SIZE - 1));

 return min(sz, size);
}
