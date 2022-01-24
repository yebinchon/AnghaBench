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
 int /*<<< orphan*/  FUNC0 (double,double,long,char*) ; 

void FUNC1(void)
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
        FUNC0(a, b, eflags, "b");
        FUNC0(a, b, eflags, "e");
        FUNC0(a, b, eflags, "be");
        FUNC0(a, b, eflags, "nb");
        FUNC0(a, b, eflags, "ne");
        FUNC0(a, b, eflags, "nbe");
    }
    FUNC0(a, b, 0, "u");
    FUNC0(a, b, CC_P, "u");
    FUNC0(a, b, 0, "nu");
    FUNC0(a, b, CC_P, "nu");
}