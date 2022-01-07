
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 int atomic_notifier_call_chain (int *,size_t,void*) ;
 int * opal_msg_notifier_head ;

__attribute__((used)) static void opal_message_do_notify(uint32_t msg_type, void *msg)
{

 atomic_notifier_call_chain(&opal_msg_notifier_head[msg_type],
     msg_type, msg);
}
