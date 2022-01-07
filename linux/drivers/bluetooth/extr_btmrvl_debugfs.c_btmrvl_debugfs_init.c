
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hci_dev {int debugfs; } ;
struct TYPE_4__ {int tx_dnld_rdy; int hsmode; int gpio_gap; int psmode; } ;
struct btmrvl_private {TYPE_2__ btmrvl_dev; TYPE_1__* adapter; struct btmrvl_debugfs_data* debugfs_data; } ;
struct btmrvl_debugfs_data {void* status_dir; void* config_dir; } ;
struct TYPE_3__ {int hs_state; int ps_state; int psmode; } ;


 int BT_ERR (char*) ;
 int GFP_KERNEL ;
 int btmrvl_hscfgcmd_fops ;
 int btmrvl_hscmd_fops ;
 int btmrvl_pscmd_fops ;
 void* debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,void*,struct btmrvl_private*,int *) ;
 int debugfs_create_u8 (char*,int,void*,int *) ;
 int debugfs_create_x16 (char*,int,void*,int *) ;
 struct btmrvl_private* hci_get_drvdata (struct hci_dev*) ;
 struct btmrvl_debugfs_data* kzalloc (int,int ) ;

void btmrvl_debugfs_init(struct hci_dev *hdev)
{
 struct btmrvl_private *priv = hci_get_drvdata(hdev);
 struct btmrvl_debugfs_data *dbg;

 if (!hdev->debugfs)
  return;

 dbg = kzalloc(sizeof(*dbg), GFP_KERNEL);
 priv->debugfs_data = dbg;

 if (!dbg) {
  BT_ERR("Can not allocate memory for btmrvl_debugfs_data.");
  return;
 }

 dbg->config_dir = debugfs_create_dir("config", hdev->debugfs);

 debugfs_create_u8("psmode", 0644, dbg->config_dir,
     &priv->btmrvl_dev.psmode);
 debugfs_create_file("pscmd", 0644, dbg->config_dir,
       priv, &btmrvl_pscmd_fops);
 debugfs_create_x16("gpiogap", 0644, dbg->config_dir,
      &priv->btmrvl_dev.gpio_gap);
 debugfs_create_u8("hsmode", 0644, dbg->config_dir,
     &priv->btmrvl_dev.hsmode);
 debugfs_create_file("hscmd", 0644, dbg->config_dir,
       priv, &btmrvl_hscmd_fops);
 debugfs_create_file("hscfgcmd", 0644, dbg->config_dir,
       priv, &btmrvl_hscfgcmd_fops);

 dbg->status_dir = debugfs_create_dir("status", hdev->debugfs);
 debugfs_create_u8("curpsmode", 0444, dbg->status_dir,
     &priv->adapter->psmode);
 debugfs_create_u8("psstate", 0444, dbg->status_dir,
     &priv->adapter->ps_state);
 debugfs_create_u8("hsstate", 0444, dbg->status_dir,
     &priv->adapter->hs_state);
 debugfs_create_u8("txdnldready", 0444, dbg->status_dir,
     &priv->btmrvl_dev.tx_dnld_rdy);
}
