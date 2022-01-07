
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct class {TYPE_1__* p; } ;
struct TYPE_2__ {int subsys; } ;


 int kset_get (int *) ;

__attribute__((used)) static struct class *class_get(struct class *cls)
{
 if (cls)
  kset_get(&cls->p->subsys);
 return cls;
}
