
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ id; } ;
struct bcma_device {TYPE_3__ id; TYPE_2__* bus; } ;
struct TYPE_4__ {scalar_t__ id; scalar_t__ rev; } ;
struct TYPE_5__ {TYPE_1__ chipinfo; } ;


 scalar_t__ BCMA_CHIP_ID_BCM47162 ;
 scalar_t__ BCMA_CORE_MIPS_74K ;

__attribute__((used)) static inline bool bcma_core_mips_bcm47162a0_quirk(struct bcma_device *dev)
{
 return dev->bus->chipinfo.id == BCMA_CHIP_ID_BCM47162 &&
        dev->bus->chipinfo.rev == 0 && dev->id.id == BCMA_CORE_MIPS_74K;
}
