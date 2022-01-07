
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long min_percent (int,unsigned long,int) ;

__attribute__((used)) static unsigned long compute_sfb_extent(unsigned long ratio, unsigned long base)
{





 if (ratio <= 5)
  return 0;
 if (ratio <= 25)
  return min_percent(1, base, 1);
 if (ratio <= 50)
  return min_percent(1, base, 1);
 if (ratio <= 75)
  return min_percent(2, base, 2);
 if (ratio <= 100)
  return min_percent(3, base, 3);
 if (ratio <= 250)
  return min_percent(4, base, 4);

 return min_percent(5, base, 8);
}
