
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwicap_drvdata {scalar_t__ base_address; } ;


 scalar_t__ XHI_SZ_OFFSET ;
 int out_be32 (scalar_t__,int ) ;

__attribute__((used)) static inline void fifo_icap_set_read_size(struct hwicap_drvdata *drvdata,
  u32 data)
{
 out_be32(drvdata->base_address + XHI_SZ_OFFSET, data);
}
