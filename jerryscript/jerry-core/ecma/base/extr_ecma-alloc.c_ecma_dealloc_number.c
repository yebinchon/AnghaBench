
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ecma_number_t ;


 int jmem_pools_free (int *,int) ;

void
ecma_dealloc_number (ecma_number_t *number_p)
{
  jmem_pools_free ((uint8_t *) number_p, sizeof (ecma_number_t));
}
