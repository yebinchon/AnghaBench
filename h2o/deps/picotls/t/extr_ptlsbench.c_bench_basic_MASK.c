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
typedef  int uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 () ; 

__attribute__((used)) static int FUNC1(uint64_t *x)
{
    uint64_t t_start = FUNC0();
    uint32_t a = (uint32_t)((*x)&0xFFFFFFFF);
    uint32_t b = (uint32_t)((*x)>>32);

    /* Evaluate the current CPU. The benchmark is designed to 
     * emulate typical encryption operations, hopefully so it
     * will not be compiled out by the optimizer. */
    for (unsigned int i = 0; i < 10000000; i++) {
        uint32_t v = (a >> 3)|(a << 29);
        v += a;
        v ^= b;
        b = a;
        a = v;
    }
    *x = (((uint64_t) b)<<32)|a;

    return (int)(FUNC0() - t_start);
}