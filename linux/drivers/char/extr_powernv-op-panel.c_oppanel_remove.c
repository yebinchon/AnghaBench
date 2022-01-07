
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int kfree (int ) ;
 int misc_deregister (int *) ;
 int oppanel_data ;
 int oppanel_dev ;
 int oppanel_lines ;

__attribute__((used)) static int oppanel_remove(struct platform_device *pdev)
{
 misc_deregister(&oppanel_dev);
 kfree(oppanel_lines);
 kfree(oppanel_data);
 return 0;
}
