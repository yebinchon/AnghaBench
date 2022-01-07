
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef enum omap3_l3_initiator_id { ____Placeholder_omap3_l3_initiator_id } omap3_l3_initiator_id ;


 int L3_ERROR_LOG_INITID ;

__attribute__((used)) static inline enum omap3_l3_initiator_id omap3_l3_decode_initid(u64 error)
{
 return (error & 0xff00) >> L3_ERROR_LOG_INITID;
}
