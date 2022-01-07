
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ts_nbus {int ale; } ;


 int TS_NBUS_WRITE_ADR ;
 int gpiod_set_value_cansleep (int ,int) ;
 int ts_nbus_reset_bus (struct ts_nbus*) ;
 int ts_nbus_start_transaction (struct ts_nbus*) ;
 int ts_nbus_write_byte (struct ts_nbus*,int ) ;

__attribute__((used)) static void ts_nbus_write_bus(struct ts_nbus *ts_nbus, int cmd, u8 val)
{
 ts_nbus_reset_bus(ts_nbus);

 if (cmd == TS_NBUS_WRITE_ADR)
  gpiod_set_value_cansleep(ts_nbus->ale, 1);

 ts_nbus_write_byte(ts_nbus, val);
 ts_nbus_start_transaction(ts_nbus);
}
