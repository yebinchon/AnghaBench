
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_number_t ;


 scalar_t__ jmem_pools_alloc (int) ;

ecma_number_t *
ecma_alloc_number (void)
{
  return (ecma_number_t *) jmem_pools_alloc (sizeof (ecma_number_t));
}
