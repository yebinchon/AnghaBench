
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmstb_gisb_arb_device {int* gisb_offsets; scalar_t__ base; scalar_t__ big_endian; } ;


 int ARB_ERR_CAP_MASTER ;
 int ioread32 (scalar_t__) ;
 int ioread32be (scalar_t__) ;

__attribute__((used)) static u32 gisb_read(struct brcmstb_gisb_arb_device *gdev, int reg)
{
 int offset = gdev->gisb_offsets[reg];

 if (offset < 0) {

  if (reg == ARB_ERR_CAP_MASTER)
   return 1;
  else
   return 0;
 }

 if (gdev->big_endian)
  return ioread32be(gdev->base + offset);
 else
  return ioread32(gdev->base + offset);
}
