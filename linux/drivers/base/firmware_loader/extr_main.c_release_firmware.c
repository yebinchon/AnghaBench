
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;


 int firmware_free_data (struct firmware const*) ;
 int fw_is_builtin_firmware (struct firmware const*) ;
 int kfree (struct firmware const*) ;

void release_firmware(const struct firmware *fw)
{
 if (fw) {
  if (!fw_is_builtin_firmware(fw))
   firmware_free_data(fw);
  kfree(fw);
 }
}
