
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int clock_rate ;

__attribute__((used)) static inline u32 ticks2usecs(u32 x)
{
 return x / (clock_rate / 1000000);
}
