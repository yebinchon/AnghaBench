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
struct coproc_reg {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct coproc_reg const*,struct coproc_reg const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct coproc_reg const*,unsigned int) ; 

__attribute__((used)) static int FUNC2(const struct coproc_reg *table, unsigned int n)
{
	unsigned int i;

	for (i = 1; i < n; i++) {
		if (FUNC0(&table[i-1], &table[i]) >= 0) {
			FUNC1("reg table %p out of order (%d)\n", table, i - 1);
			return 1;
		}
	}

	return 0;
}