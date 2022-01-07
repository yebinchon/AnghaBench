
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwicap_drvdata {scalar_t__ base_address; } ;


 int XHI_SR_DONE_MASK ;
 scalar_t__ XHI_SR_OFFSET ;
 int in_be32 (scalar_t__) ;

__attribute__((used)) static inline u32 fifo_icap_busy(struct hwicap_drvdata *drvdata)
{
 u32 status = in_be32(drvdata->base_address + XHI_SR_OFFSET);
 return (status & XHI_SR_DONE_MASK) ? 0 : 1;
}
