
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int ecma_object_type_t ;
struct TYPE_10__ {int prototype_cp; } ;
struct TYPE_9__ {int property_list_cp; } ;
struct TYPE_11__ {TYPE_2__ u2; TYPE_1__ u1; scalar_t__ type_flags_refs; } ;
typedef TYPE_3__ ecma_object_t ;


 int ECMA_OBJECT_FLAG_EXTENSIBLE ;
 int ECMA_SET_POINTER (int ,TYPE_3__*) ;
 int JMEM_CP_NULL ;
 scalar_t__ ecma_alloc_extended_object (size_t) ;
 TYPE_3__* ecma_alloc_object () ;
 int ecma_init_gc_info (TYPE_3__*) ;

ecma_object_t *
ecma_create_object (ecma_object_t *prototype_object_p,
                    size_t ext_object_size,
                    ecma_object_type_t type)
{
  ecma_object_t *new_object_p;

  if (ext_object_size > 0)
  {
    new_object_p = (ecma_object_t *) ecma_alloc_extended_object (ext_object_size);
  }
  else
  {
    new_object_p = ecma_alloc_object ();
  }

  new_object_p->type_flags_refs = (uint16_t) (type | ECMA_OBJECT_FLAG_EXTENSIBLE);

  ecma_init_gc_info (new_object_p);

  new_object_p->u1.property_list_cp = JMEM_CP_NULL;

  ECMA_SET_POINTER (new_object_p->u2.prototype_cp, prototype_object_p);

  return new_object_p;
}
