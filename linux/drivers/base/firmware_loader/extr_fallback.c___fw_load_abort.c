
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_priv {int pending_list; } ;


 int fw_state_aborted (struct fw_priv*) ;
 scalar_t__ fw_sysfs_done (struct fw_priv*) ;
 int list_del_init (int *) ;

__attribute__((used)) static void __fw_load_abort(struct fw_priv *fw_priv)
{




 if (fw_sysfs_done(fw_priv))
  return;

 list_del_init(&fw_priv->pending_list);
 fw_state_aborted(fw_priv);
}
