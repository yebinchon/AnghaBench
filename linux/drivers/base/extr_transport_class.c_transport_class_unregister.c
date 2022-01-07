
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport_class {int class; } ;


 int class_unregister (int *) ;

void transport_class_unregister(struct transport_class *tclass)
{
 class_unregister(&tclass->class);
}
