
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timer_group_priv {int flags; int timerfreq; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int FSL_GLOBAL_TIMER ;
 int MPIC_TIMER_TCR_CLKDIV ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int timer_group_get_freq(struct device_node *np,
   struct timer_group_priv *priv)
{
 u32 div;

 if (priv->flags & FSL_GLOBAL_TIMER) {
  struct device_node *dn;

  dn = of_find_compatible_node(((void*)0), ((void*)0), "fsl,mpic");
  if (dn) {
   of_property_read_u32(dn, "clock-frequency",
     &priv->timerfreq);
   of_node_put(dn);
  }
 }

 if (priv->timerfreq <= 0)
  return -EINVAL;

 if (priv->flags & FSL_GLOBAL_TIMER) {
  div = (1 << (MPIC_TIMER_TCR_CLKDIV >> 8)) * 8;
  priv->timerfreq /= div;
 }

 return 0;
}
