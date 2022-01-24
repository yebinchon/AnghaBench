#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uc_engine ;
struct tlb {int dummy; } ;
struct cpu_state {int /*<<< orphan*/  mem; } ;
struct TYPE_4__ {struct cpu_state cpu; TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  mem; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cpu_state*,struct tlb*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_state*,struct tlb*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  debugger ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct cpu_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (struct cpu_state*,struct tlb*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct tlb*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct cpu_state*,struct tlb*) ; 
 int FUNC9 (int,char* const*,int /*<<< orphan*/ *) ; 

int FUNC10(int argc, char *const argv[]) {
    int err = FUNC9(argc, argv, NULL);
    if (err < 0) {
        // FIXME this often prints the wrong error message on non-x86_64
        FUNC2(stderr, "%s\n", FUNC6(-err));
        return err;
    }

    // create a unicorn and set it up exactly the same as the current process
    uc_engine *uc = FUNC4(&current->cpu, &current->mm->mem);

    struct cpu_state *cpu = &current->cpu;
    struct tlb tlb;
    FUNC7(&tlb, cpu->mem);
    int undefined_flags = 0;
    struct cpu_state old_cpu = *cpu;
    while (true) {
        while (FUNC0(cpu, &tlb, uc, undefined_flags) < 0) {
            FUNC3("resetting cpu\n");
            *cpu = old_cpu;
            debugger;
            FUNC1(cpu, &tlb);
        }
        undefined_flags = FUNC8(cpu, &tlb);
        old_cpu = *cpu;
        FUNC5(cpu, &tlb, uc);
    }
}