
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ts_nbus {int dummy; } ;


 int ts_nbus_read_byte (struct ts_nbus*,int *) ;
 int ts_nbus_reset_bus (struct ts_nbus*) ;
 int ts_nbus_start_transaction (struct ts_nbus*) ;

__attribute__((used)) static int ts_nbus_read_bus(struct ts_nbus *ts_nbus, u8 *val)
{
 ts_nbus_reset_bus(ts_nbus);
 ts_nbus_start_transaction(ts_nbus);

 return ts_nbus_read_byte(ts_nbus, val);
}
