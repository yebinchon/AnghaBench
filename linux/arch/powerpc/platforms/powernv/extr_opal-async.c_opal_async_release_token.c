
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __opal_async_release_token (int) ;
 int opal_async_sem ;
 int up (int *) ;

int opal_async_release_token(int token)
{
 int ret;

 ret = __opal_async_release_token(token);
 if (!ret)
  up(&opal_async_sem);

 return ret;
}
