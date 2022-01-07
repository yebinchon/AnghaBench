
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct skd_device {int dbg_level; TYPE_1__* pdev; scalar_t__* mem_map; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void skd_reg_write32(struct skd_device *skdev, u32 val,
       u32 offset)
{
 writel(val, skdev->mem_map[1] + offset);
 if (unlikely(skdev->dbg_level >= 2))
  dev_dbg(&skdev->pdev->dev, "offset %x = %x\n", offset, val);
}
