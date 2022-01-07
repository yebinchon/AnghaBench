
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef scalar_t__ u32 ;


 scalar_t__ DIV_ROUND_UP_ULL (unsigned long long,unsigned long long) ;

__attribute__((used)) static inline u32 omap_usec_to_32k(u32 usec)
{
 return DIV_ROUND_UP_ULL(32768ULL * (u64)usec, 1000000ULL);
}
