
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_info {int intf; } ;
struct i2c_client {int dummy; } ;


 struct ssif_info* i2c_get_clientdata (struct i2c_client*) ;
 int ipmi_unregister_smi (int ) ;
 int kfree (struct ssif_info*) ;

__attribute__((used)) static void ssif_remove_dup(struct i2c_client *client)
{
 struct ssif_info *ssif_info = i2c_get_clientdata(client);

 ipmi_unregister_smi(ssif_info->intf);
 kfree(ssif_info);
}
