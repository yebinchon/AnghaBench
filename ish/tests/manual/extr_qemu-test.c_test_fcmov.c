
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long CC_C ;
 long CC_P ;
 long CC_Z ;
 int TEST_FCMOV (double,double,long,char*) ;

void test_fcmov(void)
{
    double a, b;
    long eflags, i;

    a = 1.0;
    b = 2.0;
    for(i = 0; i < 4; i++) {
        eflags = 0;
        if (i & 1)
            eflags |= CC_C;
        if (i & 2)
            eflags |= CC_Z;
        TEST_FCMOV(a, b, eflags, "b");
        TEST_FCMOV(a, b, eflags, "e");
        TEST_FCMOV(a, b, eflags, "be");
        TEST_FCMOV(a, b, eflags, "nb");
        TEST_FCMOV(a, b, eflags, "ne");
        TEST_FCMOV(a, b, eflags, "nbe");
    }
    TEST_FCMOV(a, b, 0, "u");
    TEST_FCMOV(a, b, CC_P, "u");
    TEST_FCMOV(a, b, 0, "nu");
    TEST_FCMOV(a, b, CC_P, "nu");
}
