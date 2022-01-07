
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class {int dummy; } ;


 scalar_t__ IS_ERR (struct class*) ;
 int class_unregister (struct class*) ;

void class_destroy(struct class *cls)
{
 if ((cls == ((void*)0)) || (IS_ERR(cls)))
  return;

 class_unregister(cls);
}
