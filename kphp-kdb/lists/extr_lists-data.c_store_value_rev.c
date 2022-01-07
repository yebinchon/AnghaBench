
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value_t ;


 int* VALUE_INTS ;

__attribute__((used)) static inline void store_value_rev (int **P, value_t value) {


  int *PVal = (*P) - VALUE_INTS;
  *(value_t *)PVal = value;
  *P = PVal;
}
