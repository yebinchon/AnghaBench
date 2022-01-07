
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwicap_drvdata {scalar_t__ base_address; } ;


 scalar_t__ XHI_STATUS_REG_OFFSET ;
 int out_be32 (scalar_t__,int) ;

void buffer_icap_reset(struct hwicap_drvdata *drvdata)
{
    out_be32(drvdata->base_address + XHI_STATUS_REG_OFFSET, 0xFEFE);
}
