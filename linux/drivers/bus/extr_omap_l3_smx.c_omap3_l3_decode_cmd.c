
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int L3_ERROR_LOG_CMD ;

__attribute__((used)) static inline unsigned omap3_l3_decode_cmd(u64 error)
{
 return (error & 0x07) >> L3_ERROR_LOG_CMD;
}
