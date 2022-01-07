
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ecma_number_t ;


 int ecma_number_unpack (int ,int *,int *,int *) ;

__attribute__((used)) static uint32_t
ecma_number_get_biased_exponent_field (ecma_number_t num)
{
  uint32_t biased_exp;

  ecma_number_unpack (num, ((void*)0), &biased_exp, ((void*)0));

  return biased_exp;
}
