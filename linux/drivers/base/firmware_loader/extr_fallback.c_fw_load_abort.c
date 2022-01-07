
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_sysfs {struct fw_priv* fw_priv; } ;
struct fw_priv {int dummy; } ;


 int __fw_load_abort (struct fw_priv*) ;

__attribute__((used)) static void fw_load_abort(struct fw_sysfs *fw_sysfs)
{
 struct fw_priv *fw_priv = fw_sysfs->fw_priv;

 __fw_load_abort(fw_priv);
}
