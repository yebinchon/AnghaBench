
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pata_macio_priv {int aapl_bus_id; scalar_t__ mediabay; int node; void* timings; int kind; } ;


 int controller_heathrow ;
 int controller_k2_ata6 ;
 int controller_kl_ata3 ;
 int controller_kl_ata4 ;
 int controller_ohare ;
 int controller_sh_ata6 ;
 int controller_un_ata6 ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 int* of_get_property (int ,char*,int *) ;
 scalar_t__ of_node_name_eq (int ,char*) ;
 void* pata_macio_heathrow_timings ;
 void* pata_macio_kauai_timings ;
 void* pata_macio_kl33_timings ;
 void* pata_macio_kl66_timings ;
 void* pata_macio_ohare_timings ;
 void* pata_macio_shasta_timings ;

__attribute__((used)) static void pata_macio_invariants(struct pata_macio_priv *priv)
{
 const int *bidp;


 if (of_device_is_compatible(priv->node, "shasta-ata")) {
  priv->kind = controller_sh_ata6;
         priv->timings = pata_macio_shasta_timings;
 } else if (of_device_is_compatible(priv->node, "kauai-ata")) {
  priv->kind = controller_un_ata6;
         priv->timings = pata_macio_kauai_timings;
 } else if (of_device_is_compatible(priv->node, "K2-UATA")) {
  priv->kind = controller_k2_ata6;
         priv->timings = pata_macio_kauai_timings;
 } else if (of_device_is_compatible(priv->node, "keylargo-ata")) {
  if (of_node_name_eq(priv->node, "ata-4")) {
   priv->kind = controller_kl_ata4;
   priv->timings = pata_macio_kl66_timings;
  } else {
   priv->kind = controller_kl_ata3;
   priv->timings = pata_macio_kl33_timings;
  }
 } else if (of_device_is_compatible(priv->node, "heathrow-ata")) {
  priv->kind = controller_heathrow;
  priv->timings = pata_macio_heathrow_timings;
 } else {
  priv->kind = controller_ohare;
  priv->timings = pata_macio_ohare_timings;
 }




 bidp = of_get_property(priv->node, "AAPL,bus-id", ((void*)0));
 priv->aapl_bus_id = bidp ? *bidp : 0;


 if (priv->mediabay && bidp == 0)
  priv->aapl_bus_id = 1;
}
