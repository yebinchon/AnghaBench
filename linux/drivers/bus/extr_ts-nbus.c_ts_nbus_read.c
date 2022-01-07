
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ts_nbus {int lock; int rdy; int csn; int txrx; } ;


 int TS_NBUS_DIRECTION_IN ;
 int TS_NBUS_DIRECTION_OUT ;
 int TS_NBUS_WRITE_ADR ;
 int gpiod_get_value_cansleep (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ts_nbus_read_bus (struct ts_nbus*,int*) ;
 int ts_nbus_set_direction (struct ts_nbus*,int ) ;
 int ts_nbus_write_bus (struct ts_nbus*,int ,int) ;

int ts_nbus_read(struct ts_nbus *ts_nbus, u8 adr, u16 *val)
{
 int ret, i;
 u8 byte;


 mutex_lock(&ts_nbus->lock);


 gpiod_set_value_cansleep(ts_nbus->txrx, 0);


 ts_nbus_write_bus(ts_nbus, TS_NBUS_WRITE_ADR, adr);


 ts_nbus_set_direction(ts_nbus, TS_NBUS_DIRECTION_IN);


 do {
  *val = 0;
  byte = 0;
  for (i = 1; i >= 0; i--) {

   ret = ts_nbus_read_bus(ts_nbus, &byte);
   if (ret < 0)
    goto err;


   *val |= byte << (i * 8);
  }
  gpiod_set_value_cansleep(ts_nbus->csn, 1);
  ret = gpiod_get_value_cansleep(ts_nbus->rdy);
 } while (ret);

err:

 ts_nbus_set_direction(ts_nbus, TS_NBUS_DIRECTION_OUT);

 mutex_unlock(&ts_nbus->lock);

 return ret;
}
