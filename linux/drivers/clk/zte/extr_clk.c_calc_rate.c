
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int BIT (int ) ;
 int BPAR ;
 int do_div (int,int) ;

__attribute__((used)) static u32 calc_rate(u32 reg, u32 parent_rate)
{
 u32 sel, integ, fra_div, tmp;
 u64 tmp64 = (u64)parent_rate * BPAR;

 tmp = reg;
 sel = (tmp >> 24) & BIT(0);
 integ = (tmp >> 16) & 0xff;
 fra_div = tmp & 0xff;

 tmp = fra_div * BPAR;
 tmp = tmp / 0xff;
 tmp += sel * BPAR;
 tmp += 2 * integ * BPAR;
 do_div(tmp64, tmp);

 return (u32)tmp64;
}
