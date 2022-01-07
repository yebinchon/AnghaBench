
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (unsigned long) ;
 int CACHE_LINE_SIZE ;
 unsigned long MAX_RANGE_SIZE ;
 int PAGE_SIZE ;

__attribute__((used)) static unsigned long calc_range_end(unsigned long start, unsigned long end)
{
 unsigned long range_end;

 BUG_ON(start & (CACHE_LINE_SIZE - 1));
 BUG_ON(end & (CACHE_LINE_SIZE - 1));




 range_end = end;






 if (range_end > start + MAX_RANGE_SIZE)
  range_end = start + MAX_RANGE_SIZE;




 if (range_end > (start | (PAGE_SIZE - 1)) + 1)
  range_end = (start | (PAGE_SIZE - 1)) + 1;

 return range_end;
}
