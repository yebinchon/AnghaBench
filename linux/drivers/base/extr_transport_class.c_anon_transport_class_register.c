
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* remove; void* setup; int class; } ;
struct TYPE_5__ {int * class; } ;
struct anon_transport_class {TYPE_1__ tclass; TYPE_2__ container; } ;


 void* anon_transport_dummy_function ;
 int attribute_container_register (TYPE_2__*) ;
 int attribute_container_set_no_classdevs (TYPE_2__*) ;

int anon_transport_class_register(struct anon_transport_class *atc)
{
 int error;
 atc->container.class = &atc->tclass.class;
 attribute_container_set_no_classdevs(&atc->container);
 error = attribute_container_register(&atc->container);
 if (error)
  return error;
 atc->tclass.setup = anon_transport_dummy_function;
 atc->tclass.remove = anon_transport_dummy_function;
 return 0;
}
