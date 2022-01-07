
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ts_nbus {int lock; int csn; int rdy; int txrx; } ;


 int TS_NBUS_WRITE_ADR ;
 int TS_NBUS_WRITE_VAL ;
 scalar_t__ gpiod_get_value_cansleep (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ts_nbus_write_bus (struct ts_nbus*,int ,int ) ;

int ts_nbus_write(struct ts_nbus *ts_nbus, u8 adr, u16 val)
{
 int i;


 mutex_lock(&ts_nbus->lock);


 gpiod_set_value_cansleep(ts_nbus->txrx, 1);


 ts_nbus_write_bus(ts_nbus, TS_NBUS_WRITE_ADR, adr);


 for (i = 1; i >= 0; i--)
  ts_nbus_write_bus(ts_nbus, TS_NBUS_WRITE_VAL, (u8)(val >> (i * 8)));


 gpiod_set_value_cansleep(ts_nbus->csn, 1);
 while (gpiod_get_value_cansleep(ts_nbus->rdy) != 0) {
  gpiod_set_value_cansleep(ts_nbus->csn, 0);
  gpiod_set_value_cansleep(ts_nbus->csn, 1);
 }

 mutex_unlock(&ts_nbus->lock);

 return 0;
}
