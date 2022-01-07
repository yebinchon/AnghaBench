
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct badblocks {int dummy; } ;


 int __badblocks_init (int *,struct badblocks*,int) ;

int badblocks_init(struct badblocks *bb, int enable)
{
 return __badblocks_init(((void*)0), bb, enable);
}
