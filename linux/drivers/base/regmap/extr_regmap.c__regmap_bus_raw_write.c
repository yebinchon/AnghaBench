
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val_bytes; scalar_t__ pad_bytes; scalar_t__ reg_bytes; int (* format_val ) (scalar_t__,unsigned int,int ) ;} ;
struct regmap {TYPE_1__ format; scalar_t__ work_buf; int bus; } ;


 int WARN_ON (int) ;
 int _regmap_raw_write_impl (struct regmap*,unsigned int,scalar_t__,int ) ;
 int stub1 (scalar_t__,unsigned int,int ) ;

__attribute__((used)) static int _regmap_bus_raw_write(void *context, unsigned int reg,
     unsigned int val)
{
 struct regmap *map = context;

 WARN_ON(!map->bus || !map->format.format_val);

 map->format.format_val(map->work_buf + map->format.reg_bytes
          + map->format.pad_bytes, val, 0);
 return _regmap_raw_write_impl(map, reg,
          map->work_buf +
          map->format.reg_bytes +
          map->format.pad_bytes,
          map->format.val_bytes);
}
