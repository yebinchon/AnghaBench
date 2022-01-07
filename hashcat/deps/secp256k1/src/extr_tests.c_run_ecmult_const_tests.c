
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ecmult_const_chain_multiply () ;
 int ecmult_const_commutativity () ;
 int ecmult_const_mult_zero_one () ;
 int ecmult_const_random_mult () ;

void run_ecmult_const_tests(void) {
    ecmult_const_mult_zero_one();
    ecmult_const_random_mult();
    ecmult_const_commutativity();
    ecmult_const_chain_multiply();
}
