
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int * kset; } ;
struct device {TYPE_2__* class; } ;
struct TYPE_4__ {TYPE_1__* p; } ;
struct TYPE_3__ {int glue_dirs; } ;



__attribute__((used)) static inline bool live_in_glue_dir(struct kobject *kobj,
        struct device *dev)
{
 if (!kobj || !dev->class ||
     kobj->kset != &dev->class->p->glue_dirs)
  return 0;
 return 1;
}
