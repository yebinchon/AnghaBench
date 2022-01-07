
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static unsigned long cs2000_ratio_to_rate(u32 ratio, u32 rate_in)
{
 u64 rate_out;
 rate_out = (u64)ratio * rate_in;
 return rate_out >> 20;
}
