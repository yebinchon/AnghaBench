
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_rsb_device {int dummy; } ;
struct sunxi_rsb_ctx {int size; struct sunxi_rsb_device* rdev; } ;
struct regmap_config {int val_bits; } ;


 int EINVAL ;
 int ENOMEM ;
 struct sunxi_rsb_ctx* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct sunxi_rsb_ctx* kzalloc (int,int ) ;

__attribute__((used)) static struct sunxi_rsb_ctx *regmap_sunxi_rsb_init_ctx(struct sunxi_rsb_device *rdev,
  const struct regmap_config *config)
{
 struct sunxi_rsb_ctx *ctx;

 switch (config->val_bits) {
 case 8:
 case 16:
 case 32:
  break;
 default:
  return ERR_PTR(-EINVAL);
 }

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return ERR_PTR(-ENOMEM);

 ctx->rdev = rdev;
 ctx->size = config->val_bits / 8;

 return ctx;
}
