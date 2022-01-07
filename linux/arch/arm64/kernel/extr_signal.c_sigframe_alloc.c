
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_sigframe_user_layout {int dummy; } ;


 int __sigframe_alloc (struct rt_sigframe_user_layout*,unsigned long*,size_t,int) ;

__attribute__((used)) static int sigframe_alloc(struct rt_sigframe_user_layout *user,
     unsigned long *offset, size_t size)
{
 return __sigframe_alloc(user, offset, size, 1);
}
