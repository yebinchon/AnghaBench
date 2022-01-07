
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_rsb_device {int rtaddr; int rsb; } ;
struct sunxi_rsb_ctx {int size; struct sunxi_rsb_device* rdev; } ;


 int sunxi_rsb_write (int ,int ,unsigned int,unsigned int*,int ) ;

__attribute__((used)) static int regmap_sunxi_rsb_reg_write(void *context, unsigned int reg,
          unsigned int val)
{
 struct sunxi_rsb_ctx *ctx = context;
 struct sunxi_rsb_device *rdev = ctx->rdev;

 return sunxi_rsb_write(rdev->rsb, rdev->rtaddr, reg, &val, ctx->size);
}
