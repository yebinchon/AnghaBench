
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct device {int devt; } ;


 int GFP_KERNEL ;
 int MINOR (int ) ;
 char* kasprintf (int ,char*,int ) ;

__attribute__((used)) static char *cpuid_devnode(struct device *dev, umode_t *mode)
{
 return kasprintf(GFP_KERNEL, "cpu/%u/cpuid", MINOR(dev->devt));
}
