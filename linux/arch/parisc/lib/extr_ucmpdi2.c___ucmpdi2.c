
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ high; scalar_t__ low; } ;
union ull_union {unsigned long long ull; TYPE_1__ ui; } ;



int __ucmpdi2(unsigned long long a, unsigned long long b)
{
 union ull_union au = {.ull = a};
 union ull_union bu = {.ull = b};

 if (au.ui.high < bu.ui.high)
  return 0;
 else if (au.ui.high > bu.ui.high)
  return 2;
 if (au.ui.low < bu.ui.low)
  return 0;
 else if (au.ui.low > bu.ui.low)
  return 2;
 return 1;
}
