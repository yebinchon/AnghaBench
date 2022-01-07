
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genpd_power_state {int dummy; } ;
struct generic_pm_domain {int state_count; int free_states; struct genpd_power_state* states; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int genpd_free_default_power_state ;
 struct genpd_power_state* kzalloc (int,int ) ;

__attribute__((used)) static int genpd_set_default_power_state(struct generic_pm_domain *genpd)
{
 struct genpd_power_state *state;

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return -ENOMEM;

 genpd->states = state;
 genpd->state_count = 1;
 genpd->free_states = genpd_free_default_power_state;

 return 0;
}
