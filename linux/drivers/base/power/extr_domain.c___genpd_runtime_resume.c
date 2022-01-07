
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct device {TYPE_8__* driver; TYPE_6__* bus; TYPE_4__* class; TYPE_2__* type; } ;
struct TYPE_16__ {TYPE_7__* pm; } ;
struct TYPE_15__ {int (* runtime_resume ) (struct device*) ;} ;
struct TYPE_14__ {TYPE_5__* pm; } ;
struct TYPE_13__ {int (* runtime_resume ) (struct device*) ;} ;
struct TYPE_12__ {TYPE_3__* pm; } ;
struct TYPE_11__ {int (* runtime_resume ) (struct device*) ;} ;
struct TYPE_10__ {TYPE_1__* pm; } ;
struct TYPE_9__ {int (* runtime_resume ) (struct device*) ;} ;



__attribute__((used)) static int __genpd_runtime_resume(struct device *dev)
{
 int (*cb)(struct device *__dev);

 if (dev->type && dev->type->pm)
  cb = dev->type->pm->runtime_resume;
 else if (dev->class && dev->class->pm)
  cb = dev->class->pm->runtime_resume;
 else if (dev->bus && dev->bus->pm)
  cb = dev->bus->pm->runtime_resume;
 else
  cb = ((void*)0);

 if (!cb && dev->driver && dev->driver->pm)
  cb = dev->driver->pm->runtime_resume;

 return cb ? cb(dev) : 0;
}
