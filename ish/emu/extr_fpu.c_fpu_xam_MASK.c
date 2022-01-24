#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct cpu_state {int c0; int c2; int c3; int /*<<< orphan*/  c1; } ;
struct TYPE_8__ {int /*<<< orphan*/  sign; } ;
typedef  TYPE_1__ float80 ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 scalar_t__ FUNC2 (TYPE_1__) ; 
 scalar_t__ FUNC3 (TYPE_1__) ; 
 scalar_t__ FUNC4 (TYPE_1__) ; 
 scalar_t__ FUNC5 (TYPE_1__) ; 

void FUNC6(struct cpu_state *cpu) {
    float80 f = FUNC0(0);
    int outflags = 0;
    if (!FUNC1(f)) {
        outflags = 0b000;
    } else if (FUNC4(f)) {
        outflags = 0b001;
    } else if (FUNC3(f)) {
        outflags = 0b011;
    } else if (FUNC5(f)) {
        outflags = 0b100;
    } else if (FUNC2(f)) {
        outflags = 0b110;
    } else {
        // normal.
        // todo: empty
        outflags = 0b010;
    }
    cpu->c1 = f.sign;
    cpu->c0 = outflags & 1;
    cpu->c2 = (outflags >> 1) & 1;
    cpu->c3 = (outflags >> 2) & 1;
}