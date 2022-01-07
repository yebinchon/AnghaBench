
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int dummy; } ;


 int PWRDM_STATE_PREV ;
 int _pwrdm_state_switch (struct powerdomain*,int ) ;

__attribute__((used)) static int _pwrdm_post_transition_cb(struct powerdomain *pwrdm, void *unused)
{
 _pwrdm_state_switch(pwrdm, PWRDM_STATE_PREV);
 return 0;
}
