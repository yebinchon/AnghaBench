
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int __ffs64 (int) ;

__attribute__((used)) static bool range_of_ones(u64 val)
{

 u64 sval = val >> __ffs64(val);


 return ((sval + 1) & (sval)) == 0;
}
