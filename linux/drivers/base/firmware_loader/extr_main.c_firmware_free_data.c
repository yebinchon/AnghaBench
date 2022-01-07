
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int priv; int data; } ;


 int free_fw_priv (int ) ;
 int vfree (int ) ;

__attribute__((used)) static void firmware_free_data(const struct firmware *fw)
{

 if (!fw->priv) {
  vfree(fw->data);
  return;
 }
 free_fw_priv(fw->priv);
}
