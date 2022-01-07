
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int * close; int uniform; } ;
typedef TYPE_1__ randombytes_implementation ;


 int assert (int) ;
 int randombytes_close () ;
 int randombytes_random () ;
 int randombytes_set_implementation (TYPE_1__*) ;
 TYPE_1__ randombytes_sysrandom_implementation ;
 int randombytes_uniform (int) ;
 int randombytes_uniform_impl ;

__attribute__((used)) static int
impl_tests(void)
{
    randombytes_implementation impl = randombytes_sysrandom_implementation;
    uint32_t v = randombytes_random();

    impl.uniform = randombytes_uniform_impl;
    randombytes_close();
    randombytes_set_implementation(&impl);
    assert(randombytes_uniform(1) == 1);
    assert(randombytes_uniform(v) == v);
    assert(randombytes_uniform(v) == v);
    assert(randombytes_uniform(v) == v);
    assert(randombytes_uniform(v) == v);
    randombytes_close();
    impl.close = ((void*)0);
    randombytes_close();

    return 0;
}
