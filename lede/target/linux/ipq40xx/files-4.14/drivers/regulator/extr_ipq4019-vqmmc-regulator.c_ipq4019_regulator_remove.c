
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct platform_device {int dummy; } ;


 struct regulator_dev* platform_get_drvdata (struct platform_device*) ;
 int regulator_unregister (struct regulator_dev*) ;

__attribute__((used)) static int ipq4019_regulator_remove(struct platform_device *pdev)
{
 struct regulator_dev *rdev = platform_get_drvdata(pdev);

 regulator_unregister(rdev);

 return 0;
}
