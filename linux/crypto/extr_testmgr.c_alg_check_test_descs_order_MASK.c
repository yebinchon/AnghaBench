#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  alg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__* alg_test_descs ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	int i;

	for (i = 1; i < FUNC0(alg_test_descs); i++) {
		int diff = FUNC3(alg_test_descs[i - 1].alg,
				  alg_test_descs[i].alg);

		if (FUNC1(diff > 0)) {
			FUNC2("testmgr: alg_test_descs entries in wrong order: '%s' before '%s'\n",
				alg_test_descs[i - 1].alg,
				alg_test_descs[i].alg);
		}

		if (FUNC1(diff == 0)) {
			FUNC2("testmgr: duplicate alg_test_descs entry: '%s'\n",
				alg_test_descs[i].alg);
		}
	}
}