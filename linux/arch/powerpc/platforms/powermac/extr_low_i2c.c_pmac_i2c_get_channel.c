
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_i2c_bus {int channel; } ;



int pmac_i2c_get_channel(struct pmac_i2c_bus *bus)
{
 return bus->channel;
}
