
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krint64_t ;
typedef int krand_t ;


 int kr_srand0 (int ,int *) ;
 int * malloc (int) ;

krand_t *kr_srand(krint64_t seed)
{
 krand_t *kr;
 kr = malloc(sizeof(krand_t));
 kr_srand0(seed, kr);
 return kr;
}
