
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct class {TYPE_1__* p; } ;
struct TYPE_2__ {int subsys; } ;


 int kset_put (int *) ;

__attribute__((used)) static void class_put(struct class *cls)
{
 if (cls)
  kset_put(&cls->p->subsys);
}
