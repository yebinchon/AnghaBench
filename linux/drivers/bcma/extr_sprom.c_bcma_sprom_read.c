
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int core; } ;
struct bcma_bus {TYPE_1__ drv_cc; } ;


 scalar_t__ bcma_read16 (int ,scalar_t__) ;

__attribute__((used)) static void bcma_sprom_read(struct bcma_bus *bus, u16 offset, u16 *sprom,
       size_t words)
{
 int i;
 for (i = 0; i < words; i++)
  sprom[i] = bcma_read16(bus->drv_cc.core, offset + (i * 2));
}
