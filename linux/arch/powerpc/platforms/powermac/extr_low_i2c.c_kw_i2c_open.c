
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_i2c_host_kw {int mutex; } ;
struct pmac_i2c_bus {struct pmac_i2c_host_kw* hostdata; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static int kw_i2c_open(struct pmac_i2c_bus *bus)
{
 struct pmac_i2c_host_kw *host = bus->hostdata;
 mutex_lock(&host->mutex);
 return 0;
}
