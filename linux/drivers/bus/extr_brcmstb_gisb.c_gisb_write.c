
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmstb_gisb_arb_device {int* gisb_offsets; scalar_t__ base; scalar_t__ big_endian; } ;


 int iowrite32 (int ,scalar_t__) ;
 int iowrite32be (int ,scalar_t__) ;

__attribute__((used)) static void gisb_write(struct brcmstb_gisb_arb_device *gdev, u32 val, int reg)
{
 int offset = gdev->gisb_offsets[reg];

 if (offset == -1)
  return;

 if (gdev->big_endian)
  iowrite32be(val, gdev->base + offset);
 else
  iowrite32(val, gdev->base + offset);
}
