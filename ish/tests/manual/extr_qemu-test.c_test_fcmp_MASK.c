#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 long CC_C ; 
 long CC_P ; 
 long CC_Z ; 
 int FPUS_EMASK ; 
 scalar_t__ TEST_FCOMI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,double,long,...) ; 

void FUNC2(double a, double b)
{
    long eflags, fpus;

    FUNC0();
    asm("fcom %2\n"
        "fstsw %%ax\n"
        : "=a" (fpus)
        : "t" (a), "u" (b));
    FUNC1("fcom(%f %f)=%04lx\n",
           a, b, fpus & (0x4500 | FPUS_EMASK));
    FUNC0();
    asm("fucom %2\n"
        "fstsw %%ax\n"
        : "=a" (fpus)
        : "t" (a), "u" (b));
    FUNC1("fucom(%f %f)=%04lx\n",
           a, b, fpus & (0x4500 | FPUS_EMASK));
    if (TEST_FCOMI) {
        /* test f(u)comi instruction */
        FUNC0();
        asm("fcomi %3, %2\n"
            "fstsw %%ax\n"
            "pushf\n"
            "pop %0\n"
            : "=r" (eflags), "=a" (fpus)
            : "t" (a), "u" (b));
        FUNC1("fcomi(%f %f)=%04lx %02lx\n",
               a, b, fpus & FPUS_EMASK, eflags & (CC_Z | CC_P | CC_C));
        FUNC0();
        asm("fucomi %3, %2\n"
            "fstsw %%ax\n"
            "pushf\n"
            "pop %0\n"
            : "=r" (eflags), "=a" (fpus)
            : "t" (a), "u" (b));
        FUNC1("fucomi(%f %f)=%04lx %02lx\n",
               a, b, fpus & FPUS_EMASK, eflags & (CC_Z | CC_P | CC_C));
    }
    FUNC0();
    asm volatile("fxam\n"
                 "fstsw %%ax\n"
                 : "=a" (fpus)
                 : "t" (a));
    FUNC1("fxam(%f)=%04lx\n", a, fpus & 0x4700);
    FUNC0();
}