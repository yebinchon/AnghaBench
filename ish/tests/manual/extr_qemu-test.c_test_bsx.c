
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_BSX (int ,char*,int) ;
 int bsfl ;
 int bsfq ;
 int bsfw ;
 int bsrl ;
 int bsrq ;
 int bsrw ;

void test_bsx(void)
{
    TEST_BSX(bsrw, "w", 0);
    TEST_BSX(bsrw, "w", 0x12340128);
    TEST_BSX(bsfw, "w", 0);
    TEST_BSX(bsfw, "w", 0x12340128);
    TEST_BSX(bsrl, "k", 0);
    TEST_BSX(bsrl, "k", 0x00340128);
    TEST_BSX(bsfl, "k", 0);
    TEST_BSX(bsfl, "k", 0x00340128);

    TEST_BSX(bsrq, "", 0);
    TEST_BSX(bsrq, "", 0x003401281234);
    TEST_BSX(bsfq, "", 0);
    TEST_BSX(bsfq, "", 0x003401281234);

}
