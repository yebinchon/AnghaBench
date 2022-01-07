
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ace_device {int dummy; } ;


 int ace_teardown (struct ace_device*) ;
 int dev_dbg (struct device*,char*,struct device*) ;
 struct ace_device* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int kfree (struct ace_device*) ;

__attribute__((used)) static void ace_free(struct device *dev)
{
 struct ace_device *ace = dev_get_drvdata(dev);
 dev_dbg(dev, "ace_free(%p)\n", dev);

 if (ace) {
  ace_teardown(ace);
  dev_set_drvdata(dev, ((void*)0));
  kfree(ace);
 }
}
