
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static inline u32 omap3_l3_decode_addr(u64 error_addr)
{
 return error_addr & 0xffffffff;
}
