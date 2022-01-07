
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int do_div (int,int) ;

__attribute__((used)) static u32 cs2000_rate_to_ratio(u32 rate_in, u32 rate_out)
{
 u64 ratio;







 ratio = (u64)rate_out << 20;
 do_div(ratio, rate_in);

 return ratio;
}
