
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dev; } ;
struct regmap_config {int dummy; } ;
struct regmap {int dummy; } ;
struct lock_class_key {int dummy; } ;


 struct regmap* __regmap_init (int *,int *,struct snd_ac97*,struct regmap_config const*,struct lock_class_key*,char const*) ;
 int ac97_regmap_bus ;

struct regmap *__regmap_init_ac97(struct snd_ac97 *ac97,
      const struct regmap_config *config,
      struct lock_class_key *lock_key,
      const char *lock_name)
{
 return __regmap_init(&ac97->dev, &ac97_regmap_bus, ac97, config,
        lock_key, lock_name);
}
