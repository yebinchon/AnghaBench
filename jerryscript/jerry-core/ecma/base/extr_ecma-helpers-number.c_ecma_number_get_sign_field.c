
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ecma_number_t ;


 int ecma_number_unpack (int ,int*,int *,int *) ;

__attribute__((used)) static uint32_t
ecma_number_get_sign_field (ecma_number_t num)
{
  bool sign;

  ecma_number_unpack (num, &sign, ((void*)0), ((void*)0));

  return sign;
}
