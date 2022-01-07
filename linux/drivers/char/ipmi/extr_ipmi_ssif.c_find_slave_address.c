
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; int adapter; } ;


 int SI_TYPE_INVALID ;
 int i2c_adapter_id (int ) ;
 int ipmi_dmi_get_slave_addr (int ,int ,int ) ;

__attribute__((used)) static int find_slave_address(struct i2c_client *client, int slave_addr)
{
 return slave_addr;
}
