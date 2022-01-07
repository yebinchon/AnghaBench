
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genpd_power_state {int dummy; } ;


 int kfree (struct genpd_power_state*) ;

__attribute__((used)) static void genpd_free_default_power_state(struct genpd_power_state *states,
        unsigned int state_count)
{
 kfree(states);
}
