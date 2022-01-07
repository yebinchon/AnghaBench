
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pmac_i2c_bus {int (* xfer ) (struct pmac_i2c_bus*,int ,int,int ,int *,int) ;int busnode; int mode; int channel; int opened; } ;


 int DBG (char*,int,...) ;
 int WARN_ON (int) ;
 int stub1 (struct pmac_i2c_bus*,int ,int,int ,int *,int) ;

int pmac_i2c_xfer(struct pmac_i2c_bus *bus, u8 addrdir, int subsize,
    u32 subaddr, u8 *data, int len)
{
 int rc;

 WARN_ON(!bus->opened);

 DBG("xfer() chan=%d, addrdir=0x%x, mode=%d, subsize=%d, subaddr=0x%x,"
     " %d bytes, bus %pOF\n", bus->channel, addrdir, bus->mode, subsize,
     subaddr, len, bus->busnode);

 rc = bus->xfer(bus, addrdir, subsize, subaddr, data, len);





 return rc;
}
