
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ecma_value_t ;
struct TYPE_3__ {int refs_and_flags; int value; } ;
typedef TYPE_1__ ecma_error_reference_t ;


 int ECMA_ERROR_REF_ABORT ;
 int ECMA_ERROR_REF_ONE ;
 int ecma_make_error_reference_value (TYPE_1__*) ;
 scalar_t__ jmem_pools_alloc (int) ;

ecma_value_t
ecma_create_error_reference (ecma_value_t value,
                             bool is_exception)
{
  ecma_error_reference_t *error_ref_p = (ecma_error_reference_t *) jmem_pools_alloc (sizeof (ecma_error_reference_t));

  error_ref_p->refs_and_flags = ECMA_ERROR_REF_ONE | (is_exception ? 0 : ECMA_ERROR_REF_ABORT);
  error_ref_p->value = value;
  return ecma_make_error_reference_value (error_ref_p);
}
