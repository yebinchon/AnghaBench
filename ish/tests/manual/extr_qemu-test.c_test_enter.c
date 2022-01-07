
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ENTER (char*,int ,int) ;
 int uint16_t ;
 int uint32_t ;
 int uint64_t ;

__attribute__((used)) static void test_enter(void)
{

    TEST_ENTER("q", uint64_t, 0);
    TEST_ENTER("q", uint64_t, 1);
    TEST_ENTER("q", uint64_t, 2);
    TEST_ENTER("q", uint64_t, 31);







    TEST_ENTER("w", uint16_t, 0);
    TEST_ENTER("w", uint16_t, 1);
    TEST_ENTER("w", uint16_t, 2);
    TEST_ENTER("w", uint16_t, 31);
}
