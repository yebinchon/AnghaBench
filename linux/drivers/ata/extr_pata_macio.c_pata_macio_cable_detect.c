
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pata_macio_priv {scalar_t__ kind; struct device_node* node; } ;
struct device_node {int dummy; } ;
struct ata_port {struct pata_macio_priv* private_data; } ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA40_SHORT ;
 int ATA_CBL_PATA80 ;
 scalar_t__ controller_k2_ata6 ;
 scalar_t__ controller_kl_ata4 ;
 scalar_t__ controller_sh_ata6 ;
 scalar_t__ controller_un_ata6 ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 struct device_node* of_find_node_by_path (char*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int pata_macio_cable_detect(struct ata_port *ap)
{
 struct pata_macio_priv *priv = ap->private_data;


 if (priv->kind == controller_kl_ata4 ||
     priv->kind == controller_un_ata6 ||
     priv->kind == controller_k2_ata6 ||
     priv->kind == controller_sh_ata6) {
  const char* cable = of_get_property(priv->node, "cable-type",
          ((void*)0));
  struct device_node *root = of_find_node_by_path("/");
  const char *model = of_get_property(root, "model", ((void*)0));

  of_node_put(root);

  if (cable && !strncmp(cable, "80-", 3)) {




   if (!strncmp(model, "PowerBook", 9))
    return ATA_CBL_PATA40_SHORT;
   else
    return ATA_CBL_PATA80;
  }
 }





 if (of_device_is_compatible(priv->node, "K2-UATA") ||
     of_device_is_compatible(priv->node, "shasta-ata"))
  return ATA_CBL_PATA80;


 return ATA_CBL_PATA40;
}
