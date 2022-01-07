
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;


 int ECMA_ERR_MSG (char*) ;
 int ECMA_VALUE_FALSE ;
 int ecma_raise_type_error (int ) ;

ecma_value_t
ecma_reject (bool is_throw)
{
  if (is_throw)
  {
    return ecma_raise_type_error (ECMA_ERR_MSG ("Invalid argument type."));
  }
  else
  {
    return ECMA_VALUE_FALSE;
  }
}
