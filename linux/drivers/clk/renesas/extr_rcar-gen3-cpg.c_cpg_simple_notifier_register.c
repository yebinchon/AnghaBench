
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raw_notifier_head {int dummy; } ;
struct TYPE_2__ {int notifier_call; } ;
struct cpg_simple_notifier {TYPE_1__ nb; } ;


 int cpg_simple_notifier_call ;
 int raw_notifier_chain_register (struct raw_notifier_head*,TYPE_1__*) ;

__attribute__((used)) static void cpg_simple_notifier_register(struct raw_notifier_head *notifiers,
      struct cpg_simple_notifier *csn)
{
 csn->nb.notifier_call = cpg_simple_notifier_call;
 raw_notifier_chain_register(notifiers, &csn->nb);
}
