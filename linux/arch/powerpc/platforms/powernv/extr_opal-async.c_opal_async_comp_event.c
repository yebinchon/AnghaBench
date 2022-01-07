
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint64_t ;
struct opal_msg {int * params; } ;
struct notifier_block {int dummy; } ;
typedef enum opal_async_token_state { ____Placeholder_opal_async_token_state } opal_async_token_state ;
struct TYPE_2__ {int state; int response; } ;


 int ASYNC_TOKEN_ABANDONED ;
 int ASYNC_TOKEN_COMPLETED ;
 unsigned long OPAL_MSG_ASYNC_COMP ;
 size_t be64_to_cpu (int ) ;
 int memcpy (int *,struct opal_msg*,int) ;
 int opal_async_comp_lock ;
 int opal_async_release_token (size_t) ;
 TYPE_1__* opal_async_tokens ;
 int opal_async_wait ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static int opal_async_comp_event(struct notifier_block *nb,
  unsigned long msg_type, void *msg)
{
 struct opal_msg *comp_msg = msg;
 enum opal_async_token_state state;
 unsigned long flags;
 uint64_t token;

 if (msg_type != OPAL_MSG_ASYNC_COMP)
  return 0;

 token = be64_to_cpu(comp_msg->params[0]);
 spin_lock_irqsave(&opal_async_comp_lock, flags);
 state = opal_async_tokens[token].state;
 opal_async_tokens[token].state = ASYNC_TOKEN_COMPLETED;
 spin_unlock_irqrestore(&opal_async_comp_lock, flags);

 if (state == ASYNC_TOKEN_ABANDONED) {

  opal_async_release_token(token);
  return 0;
 }
 memcpy(&opal_async_tokens[token].response, comp_msg, sizeof(*comp_msg));
 wake_up(&opal_async_wait);

 return 0;
}
