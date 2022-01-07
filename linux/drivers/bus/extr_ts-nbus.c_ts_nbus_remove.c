
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts_nbus {int lock; int pwm; } ;
struct platform_device {int dev; } ;


 struct ts_nbus* dev_get_drvdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_disable (int ) ;

__attribute__((used)) static int ts_nbus_remove(struct platform_device *pdev)
{
 struct ts_nbus *ts_nbus = dev_get_drvdata(&pdev->dev);


 mutex_lock(&ts_nbus->lock);
 pwm_disable(ts_nbus->pwm);
 mutex_unlock(&ts_nbus->lock);

 return 0;
}
