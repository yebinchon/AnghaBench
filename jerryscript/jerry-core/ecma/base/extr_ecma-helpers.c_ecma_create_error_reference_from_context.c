
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;


 int ECMA_STATUS_EXCEPTION ;
 int JERRY_CONTEXT (int ) ;
 int ecma_create_error_reference (int,int) ;
 int error_value ;
 int status_flags ;

ecma_value_t
ecma_create_error_reference_from_context (void)
{
  return ecma_create_error_reference (JERRY_CONTEXT (error_value),
                                      (JERRY_CONTEXT (status_flags) & ECMA_STATUS_EXCEPTION) != 0);
}
