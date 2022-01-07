
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwicap_drvdata {scalar_t__ base_address; int dev; } ;


 scalar_t__ XHI_WF_OFFSET ;
 int dev_dbg (int ,char*,int ) ;
 int out_be32 (scalar_t__,int ) ;

__attribute__((used)) static inline void fifo_icap_fifo_write(struct hwicap_drvdata *drvdata,
  u32 data)
{
 dev_dbg(drvdata->dev, "fifo_write: %x\n", data);
 out_be32(drvdata->base_address + XHI_WF_OFFSET, data);
}
