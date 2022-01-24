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
struct threshold_bank {int /*<<< orphan*/  kobj; int /*<<< orphan*/  cpus; int /*<<< orphan*/  blocks; } ;
struct amd_northbridge {int /*<<< orphan*/ * bank4; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct threshold_bank*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct threshold_bank*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct amd_northbridge* FUNC7 (int /*<<< orphan*/ ) ; 
 struct threshold_bank** FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  threshold_banks ; 

__attribute__((used)) static void FUNC10(unsigned int cpu, int bank)
{
	struct amd_northbridge *nb;
	struct threshold_bank *b;

	b = FUNC8(threshold_banks, cpu)[bank];
	if (!b)
		return;

	if (!b->blocks)
		goto free_out;

	if (FUNC3(bank)) {
		if (!FUNC9(&b->cpus)) {
			FUNC0(b);
			FUNC8(threshold_banks, cpu)[bank] = NULL;
			return;
		} else {
			/*
			 * the last CPU on this node using the shared bank is
			 * going away, remove that bank now.
			 */
			nb = FUNC7(FUNC1(cpu));
			nb->bank4 = NULL;
		}
	}

	FUNC2(cpu, bank);

free_out:
	FUNC5(b->kobj);
	FUNC6(b->kobj);
	FUNC4(b);
	FUNC8(threshold_banks, cpu)[bank] = NULL;
}