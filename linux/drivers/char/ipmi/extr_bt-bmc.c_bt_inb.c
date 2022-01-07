
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u8 ;
struct bt_bmc {scalar_t__ offset; int map; } ;


 int WARN (int,char*,int) ;
 int regmap_read (int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static u8 bt_inb(struct bt_bmc *bt_bmc, int reg)
{
 uint32_t val = 0;
 int rc;

 rc = regmap_read(bt_bmc->map, bt_bmc->offset + reg, &val);
 WARN(rc != 0, "regmap_read() failed: %d\n", rc);

 return rc == 0 ? (u8) val : 0;
}
