
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bt_bmc {scalar_t__ offset; int map; } ;


 int WARN (int,char*,int) ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static void bt_outb(struct bt_bmc *bt_bmc, u8 data, int reg)
{
 int rc;

 rc = regmap_write(bt_bmc->map, bt_bmc->offset + reg, data);
 WARN(rc != 0, "regmap_write() failed: %d\n", rc);
}
