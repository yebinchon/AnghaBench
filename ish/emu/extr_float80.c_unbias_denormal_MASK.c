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
 unsigned int EXP_DENORMAL ; 
 unsigned int EXP_MIN ; 
 int FUNC0 (unsigned int) ; 

__attribute__((used)) static int FUNC1(unsigned exp) {
    if (exp == EXP_DENORMAL)
        return FUNC0(EXP_MIN);
    return FUNC0(exp);
}