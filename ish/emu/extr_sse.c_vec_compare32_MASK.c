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
struct cpu_state {int zf; int pf; int cf; scalar_t__ pf_res; scalar_t__ zf_res; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(struct cpu_state *cpu, float *f2, float *f1) {
    if (FUNC0(*f1) || FUNC0(*f2)) {
        cpu->zf = 1;
        cpu->pf = 1;
        cpu->cf = 1;
    }
    else if (*f1 > *f2) {
        cpu->zf = 0;
        cpu->pf = 0;
        cpu->cf = 0;
    }
    else if (*f1 < *f2) {
        cpu->zf = 0;
        cpu->pf = 0;
        cpu->cf = 1;
    }
    else if (*f1 == *f2) {
        cpu->zf = 1;
        cpu->pf = 0;
        cpu->cf = 0;
    }
    else {
        FUNC1("something's horribly wrong. err 1093281094");
    }
    cpu->zf_res = 0;
    cpu->pf_res = 0;
}