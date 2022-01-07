
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {struct ip17xx_state* priv; } ;
struct ip17xx_state {int dev; scalar_t__ registered; } ;


 int kfree (struct ip17xx_state*) ;
 int unregister_switch (int *) ;

__attribute__((used)) static void ip17xx_remove(struct phy_device *pdev)
{
 struct ip17xx_state *state = pdev->priv;

 if (state->registered)
  unregister_switch(&state->dev);
 kfree(state);
}
