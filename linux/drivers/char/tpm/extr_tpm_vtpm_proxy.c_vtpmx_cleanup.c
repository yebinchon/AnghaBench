
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int misc_deregister (int *) ;
 int vtpmx_miscdev ;

__attribute__((used)) static void vtpmx_cleanup(void)
{
 misc_deregister(&vtpmx_miscdev);
}
