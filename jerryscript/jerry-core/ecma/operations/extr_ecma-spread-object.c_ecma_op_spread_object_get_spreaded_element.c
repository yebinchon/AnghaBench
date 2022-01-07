
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
struct TYPE_6__ {TYPE_1__ u2; } ;
struct TYPE_7__ {TYPE_2__ pseudo_array; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
typedef TYPE_4__ ecma_extended_object_t ;


 int JERRY_ASSERT (int ) ;
 int ecma_copy_value (int ) ;
 int ecma_make_object_value (int *) ;
 int ecma_op_is_spread_object (int ) ;

ecma_value_t
ecma_op_spread_object_get_spreaded_element (ecma_object_t *object_p)
{
  JERRY_ASSERT (ecma_op_is_spread_object (ecma_make_object_value (object_p)));

  ecma_extended_object_t *ext_object_p = (ecma_extended_object_t *) object_p;
  return ecma_copy_value (ext_object_p->u.pseudo_array.u2.spread_value);
}
