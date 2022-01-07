
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ecma_number_t ;


 int ecma_number_unpack (int ,int *,int *,int *) ;

__attribute__((used)) static uint64_t
ecma_number_get_fraction_field (ecma_number_t num)
{
  uint64_t fraction;

  ecma_number_unpack (num, ((void*)0), ((void*)0), &fraction);

  return fraction;
}
