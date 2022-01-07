
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_rsb_device {int dev; } ;
struct sunxi_rsb_ctx {int dummy; } ;
struct regmap_config {int dummy; } ;
struct regmap {int dummy; } ;
struct lock_class_key {int dummy; } ;


 struct regmap* ERR_CAST (struct sunxi_rsb_ctx*) ;
 scalar_t__ IS_ERR (struct sunxi_rsb_ctx*) ;
 struct regmap* __devm_regmap_init (int *,int *,struct sunxi_rsb_ctx*,struct regmap_config const*,struct lock_class_key*,char const*) ;
 int regmap_sunxi_rsb ;
 struct sunxi_rsb_ctx* regmap_sunxi_rsb_init_ctx (struct sunxi_rsb_device*,struct regmap_config const*) ;

struct regmap *__devm_regmap_init_sunxi_rsb(struct sunxi_rsb_device *rdev,
         const struct regmap_config *config,
         struct lock_class_key *lock_key,
         const char *lock_name)
{
 struct sunxi_rsb_ctx *ctx = regmap_sunxi_rsb_init_ctx(rdev, config);

 if (IS_ERR(ctx))
  return ERR_CAST(ctx);

 return __devm_regmap_init(&rdev->dev, &regmap_sunxi_rsb, ctx, config,
      lock_key, lock_name);
}
