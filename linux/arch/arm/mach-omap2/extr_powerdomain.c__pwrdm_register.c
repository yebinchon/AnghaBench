
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct voltagedomain {int dummy; } ;
struct TYPE_3__ {struct voltagedomain* ptr; int name; } ;
struct powerdomain {scalar_t__ prcm_partition; int* state_counter; int banks; size_t state; int name; scalar_t__* ret_mem_off_counter; scalar_t__ ret_logic_off_counter; int node; int _lock; int voltdm_node; TYPE_1__ voltdm; } ;
struct TYPE_4__ {int (* pwrdm_wait_transition ) (struct powerdomain*) ;int (* pwrdm_has_voltdm ) () ;} ;


 int EEXIST ;
 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ OMAP4430_INVALID_PRCM_PARTITION ;
 int PWRDM_MAX_PWRSTS ;
 scalar_t__ _pwrdm_lookup (int ) ;
 TYPE_2__* arch_pwrdm ;
 scalar_t__ cpu_is_omap44xx () ;
 int list_add (int *,int *) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ,...) ;
 int pwrdm_list ;
 size_t pwrdm_read_pwrst (struct powerdomain*) ;
 int spin_lock_init (int *) ;
 int stub1 () ;
 int stub2 (struct powerdomain*) ;
 struct voltagedomain* voltdm_lookup (int ) ;

__attribute__((used)) static int _pwrdm_register(struct powerdomain *pwrdm)
{
 int i;
 struct voltagedomain *voltdm;

 if (!pwrdm || !pwrdm->name)
  return -EINVAL;

 if (cpu_is_omap44xx() &&
     pwrdm->prcm_partition == OMAP4430_INVALID_PRCM_PARTITION) {
  pr_err("powerdomain: %s: missing OMAP4 PRCM partition ID\n",
         pwrdm->name);
  return -EINVAL;
 }

 if (_pwrdm_lookup(pwrdm->name))
  return -EEXIST;

 if (arch_pwrdm && arch_pwrdm->pwrdm_has_voltdm)
  if (!arch_pwrdm->pwrdm_has_voltdm())
   goto skip_voltdm;

 voltdm = voltdm_lookup(pwrdm->voltdm.name);
 if (!voltdm) {
  pr_err("powerdomain: %s: voltagedomain %s does not exist\n",
         pwrdm->name, pwrdm->voltdm.name);
  return -EINVAL;
 }
 pwrdm->voltdm.ptr = voltdm;
 INIT_LIST_HEAD(&pwrdm->voltdm_node);
skip_voltdm:
 spin_lock_init(&pwrdm->_lock);

 list_add(&pwrdm->node, &pwrdm_list);


 for (i = 0; i < PWRDM_MAX_PWRSTS; i++)
  pwrdm->state_counter[i] = 0;

 pwrdm->ret_logic_off_counter = 0;
 for (i = 0; i < pwrdm->banks; i++)
  pwrdm->ret_mem_off_counter[i] = 0;

 if (arch_pwrdm && arch_pwrdm->pwrdm_wait_transition)
  arch_pwrdm->pwrdm_wait_transition(pwrdm);
 pwrdm->state = pwrdm_read_pwrst(pwrdm);
 pwrdm->state_counter[pwrdm->state] = 1;

 pr_debug("powerdomain: registered %s\n", pwrdm->name);

 return 0;
}
