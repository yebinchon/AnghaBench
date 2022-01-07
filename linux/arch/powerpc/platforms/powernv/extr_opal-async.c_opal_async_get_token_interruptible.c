
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERESTARTSYS ;
 int __opal_async_get_token () ;
 scalar_t__ down_interruptible (int *) ;
 int opal_async_sem ;
 int up (int *) ;

int opal_async_get_token_interruptible(void)
{
 int token;


 if (down_interruptible(&opal_async_sem))
  return -ERESTARTSYS;

 token = __opal_async_get_token();
 if (token < 0)
  up(&opal_async_sem);

 return token;
}
