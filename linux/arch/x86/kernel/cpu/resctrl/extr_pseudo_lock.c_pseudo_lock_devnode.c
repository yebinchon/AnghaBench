
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct rdtgroup {TYPE_1__* kn; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int GFP_KERNEL ;
 struct rdtgroup* dev_get_drvdata (struct device*) ;
 char* kasprintf (int ,char*,int ) ;

__attribute__((used)) static char *pseudo_lock_devnode(struct device *dev, umode_t *mode)
{
 struct rdtgroup *rdtgrp;

 rdtgrp = dev_get_drvdata(dev);
 if (mode)
  *mode = 0600;
 return kasprintf(GFP_KERNEL, "pseudo_lock/%s", rdtgrp->kn->name);
}
