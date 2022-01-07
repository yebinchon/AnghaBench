
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwicap_drvdata {int dev; scalar_t__ base_address; } ;


 scalar_t__ XHI_CR_OFFSET ;
 int XHI_CR_WRITE_MASK ;
 int dev_dbg (int ,char*) ;
 int out_be32 (scalar_t__,int ) ;

__attribute__((used)) static inline void fifo_icap_start_config(struct hwicap_drvdata *drvdata)
{
 out_be32(drvdata->base_address + XHI_CR_OFFSET, XHI_CR_WRITE_MASK);
 dev_dbg(drvdata->dev, "configuration started\n");
}
