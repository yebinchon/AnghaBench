
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
typedef enum opal_msg_type { ____Placeholder_opal_msg_type } opal_msg_type ;


 int atomic_notifier_chain_unregister (int *,struct notifier_block*) ;
 int * opal_msg_notifier_head ;

int opal_message_notifier_unregister(enum opal_msg_type msg_type,
         struct notifier_block *nb)
{
 return atomic_notifier_chain_unregister(
   &opal_msg_notifier_head[msg_type], nb);
}
