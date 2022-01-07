
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111 {int * saved_state; } ;
struct platform_device {int dummy; } ;


 int __sa1111_remove (struct sa1111*) ;
 int kfree (int *) ;
 struct sa1111* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int sa1111_remove(struct platform_device *pdev)
{
 struct sa1111 *sachip = platform_get_drvdata(pdev);

 if (sachip) {




  __sa1111_remove(sachip);
  platform_set_drvdata(pdev, ((void*)0));
 }

 return 0;
}
