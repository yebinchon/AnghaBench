
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int bench_time () ;

__attribute__((used)) static int bench_basic(uint64_t *x)
{
    uint64_t t_start = bench_time();
    uint32_t a = (uint32_t)((*x)&0xFFFFFFFF);
    uint32_t b = (uint32_t)((*x)>>32);




    for (unsigned int i = 0; i < 10000000; i++) {
        uint32_t v = (a >> 3)|(a << 29);
        v += a;
        v ^= b;
        b = a;
        a = v;
    }
    *x = (((uint64_t) b)<<32)|a;

    return (int)(bench_time() - t_start);
}
