
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dummy; } ;


 int tpmfront_probe (struct xenbus_device*,int *) ;
 int tpmfront_remove (struct xenbus_device*) ;

__attribute__((used)) static int tpmfront_resume(struct xenbus_device *dev)
{

 tpmfront_remove(dev);
 return tpmfront_probe(dev, ((void*)0));
}
