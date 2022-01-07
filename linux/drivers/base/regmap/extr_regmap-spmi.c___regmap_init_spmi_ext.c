
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_device {int dev; } ;
struct regmap_config {int dummy; } ;
struct regmap {int dummy; } ;
struct lock_class_key {int dummy; } ;


 struct regmap* __regmap_init (int *,int *,struct spmi_device*,struct regmap_config const*,struct lock_class_key*,char const*) ;
 int regmap_spmi_ext ;

struct regmap *__regmap_init_spmi_ext(struct spmi_device *sdev,
          const struct regmap_config *config,
          struct lock_class_key *lock_key,
          const char *lock_name)
{
 return __regmap_init(&sdev->dev, &regmap_spmi_ext, sdev, config,
        lock_key, lock_name);
}
