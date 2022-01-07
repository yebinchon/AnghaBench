
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __start_initcall ;
 void* __stop_initcall ;
 int test_bsx () ;
 int test_code16 () ;
 int test_conv () ;
 int test_fxsave () ;
 int test_jcc () ;
 int test_lea () ;
 int test_mul () ;
 int test_segs () ;
 int test_sse () ;
 int test_string () ;
 int test_vm86 () ;
 int test_xchg () ;

int main(int argc, char **argv)
{
    void **ptr;
    void (*func)(void);

    ptr = &__start_initcall;
    while (ptr != &__stop_initcall) {
        func = *ptr++;
        func();
    }
    test_bsx();
    test_mul();
    test_jcc();





    test_xchg();
    test_string();

    test_lea();
    test_conv();




    return 0;
}
