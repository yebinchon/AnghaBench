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
typedef  int /*<<< orphan*/  float80 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cpu_state *cpu, float80 x) {
    cpu->zf_res = cpu->pf_res = 0;
    cpu->zf = cpu->pf = cpu->cf = 0;
    cpu->cf = FUNC2(FUNC0(0), x);
    cpu->zf = FUNC1(FUNC0(0), x);
    if (FUNC3(FUNC0(0), x))
        cpu->zf = cpu->pf = cpu->cf = 1;
}