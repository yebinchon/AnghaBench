
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline unsigned omap3_l3_decode_req_info(u64 error)
{
 return (error >> 32) & 0xffff;
}
