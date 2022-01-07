
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef enum omap3_l3_code { ____Placeholder_omap3_l3_code } omap3_l3_code ;


 int L3_ERROR_LOG_CODE ;

__attribute__((used)) static inline enum omap3_l3_code omap3_l3_decode_error_code(u64 error)
{
 return (error & 0x0f000000) >> L3_ERROR_LOG_CODE;
}
