
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int ace_free (int *) ;

__attribute__((used)) static int ace_remove(struct platform_device *dev)
{
 ace_free(&dev->dev);
 return 0;
}
