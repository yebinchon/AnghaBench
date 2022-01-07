
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int of_clk_del_provider (int ) ;

__attribute__((used)) static int si570_remove(struct i2c_client *client)
{
 of_clk_del_provider(client->dev.of_node);
 return 0;
}
