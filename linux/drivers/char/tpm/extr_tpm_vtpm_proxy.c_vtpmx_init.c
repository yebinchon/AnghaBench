
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int misc_register (int *) ;
 int vtpmx_miscdev ;

__attribute__((used)) static int vtpmx_init(void)
{
 return misc_register(&vtpmx_miscdev);
}
