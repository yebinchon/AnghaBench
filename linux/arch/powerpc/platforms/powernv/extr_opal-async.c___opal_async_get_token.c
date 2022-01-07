
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ ASYNC_TOKEN_ALLOCATED ;
 scalar_t__ ASYNC_TOKEN_UNALLOCATED ;
 int EBUSY ;
 int opal_async_comp_lock ;
 TYPE_1__* opal_async_tokens ;
 int opal_max_async_tokens ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int __opal_async_get_token(void)
{
 unsigned long flags;
 int i, token = -EBUSY;

 spin_lock_irqsave(&opal_async_comp_lock, flags);

 for (i = 0; i < opal_max_async_tokens; i++) {
  if (opal_async_tokens[i].state == ASYNC_TOKEN_UNALLOCATED) {
   opal_async_tokens[i].state = ASYNC_TOKEN_ALLOCATED;
   token = i;
   break;
  }
 }

 spin_unlock_irqrestore(&opal_async_comp_lock, flags);
 return token;
}
