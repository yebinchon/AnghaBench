
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct skd_device {int dbg_level; TYPE_1__* pdev; scalar_t__* mem_map; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,scalar_t__,scalar_t__) ;
 scalar_t__ readl (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline u32 skd_reg_read32(struct skd_device *skdev, u32 offset)
{
 u32 val = readl(skdev->mem_map[1] + offset);

 if (unlikely(skdev->dbg_level >= 2))
  dev_dbg(&skdev->pdev->dev, "offset %x = %x\n", offset, val);
 return val;
}
