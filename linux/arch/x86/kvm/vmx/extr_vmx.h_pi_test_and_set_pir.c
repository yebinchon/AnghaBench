
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi_desc {scalar_t__ pir; } ;


 int test_and_set_bit (int,unsigned long*) ;

__attribute__((used)) static inline int pi_test_and_set_pir(int vector, struct pi_desc *pi_desc)
{
 return test_and_set_bit(vector, (unsigned long *)pi_desc->pir);
}
