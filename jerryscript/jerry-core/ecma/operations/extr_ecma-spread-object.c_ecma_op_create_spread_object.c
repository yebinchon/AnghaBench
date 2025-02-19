
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ecma_value_t ;
typedef int ecma_object_t ;
struct TYPE_5__ {int spread_value; } ;
struct TYPE_6__ {TYPE_1__ u2; int type; } ;
struct TYPE_7__ {TYPE_2__ pseudo_array; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
typedef TYPE_4__ ecma_extended_object_t ;


 int ECMA_OBJECT_TYPE_PSEUDO_ARRAY ;
 int ECMA_PSEUDO_SPREAD_OBJECT ;
 int ecma_copy_value_if_not_object (int ) ;
 int * ecma_create_object (int *,int,int ) ;
 int ecma_make_object_value (int *) ;

ecma_value_t
ecma_op_create_spread_object (ecma_value_t element)
{
  ecma_object_t *object_p = ecma_create_object (((void*)0),
                                                sizeof (ecma_extended_object_t),
                                                ECMA_OBJECT_TYPE_PSEUDO_ARRAY);

  ecma_extended_object_t *ext_object_p = (ecma_extended_object_t *) object_p;
  ext_object_p->u.pseudo_array.type = ECMA_PSEUDO_SPREAD_OBJECT;
  ext_object_p->u.pseudo_array.u2.spread_value = ecma_copy_value_if_not_object (element);

  return ecma_make_object_value (object_p);
}
