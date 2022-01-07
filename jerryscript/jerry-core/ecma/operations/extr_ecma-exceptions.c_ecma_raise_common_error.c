
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lit_utf8_byte_t ;
typedef int ecma_value_t ;


 int ECMA_ERROR_COMMON ;
 int ecma_raise_standard_error (int ,int const*) ;

ecma_value_t
ecma_raise_common_error (const char *msg_p)
{
  return ecma_raise_standard_error (ECMA_ERROR_COMMON, (const lit_utf8_byte_t *) msg_p);
}
