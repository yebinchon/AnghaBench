
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ged_shutdown (struct platform_device*) ;

__attribute__((used)) static int ged_remove(struct platform_device *pdev)
{
 ged_shutdown(pdev);
 return 0;
}
