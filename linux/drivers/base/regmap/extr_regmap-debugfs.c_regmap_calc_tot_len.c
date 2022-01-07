
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val_bytes; } ;
struct regmap {int debugfs_val_len; scalar_t__ debugfs_reg_len; scalar_t__ debugfs_tot_len; TYPE_1__ format; int max_register; } ;


 scalar_t__ regmap_calc_reg_len (int ) ;

__attribute__((used)) static inline void regmap_calc_tot_len(struct regmap *map,
           void *buf, size_t count)
{

 if (!map->debugfs_tot_len) {
  map->debugfs_reg_len = regmap_calc_reg_len(map->max_register),
  map->debugfs_val_len = 2 * map->format.val_bytes;
  map->debugfs_tot_len = map->debugfs_reg_len +
   map->debugfs_val_len + 3;
 }
}
