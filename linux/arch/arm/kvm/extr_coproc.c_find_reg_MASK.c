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
typedef  int /*<<< orphan*/  table ;
struct coproc_reg {int dummy; } ;
struct coproc_params {int dummy; } ;

/* Variables and functions */
 struct coproc_reg const* FUNC0 (void*,struct coproc_reg const*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  match_reg ; 
 unsigned long FUNC1 (struct coproc_params const*) ; 

__attribute__((used)) static const struct coproc_reg *FUNC2(const struct coproc_params *params,
					 const struct coproc_reg table[],
					 unsigned int num)
{
	unsigned long pval = FUNC1(params);

	return FUNC0((void *)pval, table, num, sizeof(table[0]), match_reg);
}