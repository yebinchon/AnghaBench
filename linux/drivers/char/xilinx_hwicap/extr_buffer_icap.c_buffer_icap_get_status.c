
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwicap_drvdata {scalar_t__ base_address; } ;


 scalar_t__ XHI_STATUS_REG_OFFSET ;
 int in_be32 (scalar_t__) ;

u32 buffer_icap_get_status(struct hwicap_drvdata *drvdata)
{
 return in_be32(drvdata->base_address + XHI_STATUS_REG_OFFSET);
}
