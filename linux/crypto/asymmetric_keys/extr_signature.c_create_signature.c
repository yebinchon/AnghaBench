
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_pkey_params {int op; } ;


 int asymmetric_key_eds_op (struct kernel_pkey_params*,void const*,void*) ;
 int kernel_pkey_sign ;

int create_signature(struct kernel_pkey_params *params,
       const void *data, void *enc)
{
 params->op = kernel_pkey_sign;
 return asymmetric_key_eds_op(params, data, enc);
}
