
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_LOOP (char*) ;

void test_loop(void)
{
    long ecx, zf;
    const long ecx_vals[] = {
        0,
        1,
        0x10000,
        0x10001,

        0x100000000L,
        0x100000001L,

    };
    int i, res;





    TEST_LOOP("jecxz");
    TEST_LOOP("loop");
    TEST_LOOP("loopz");
    TEST_LOOP("loopnz");
}
