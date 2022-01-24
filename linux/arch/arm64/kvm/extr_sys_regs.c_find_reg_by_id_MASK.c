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
typedef  int /*<<< orphan*/  u64 ;
struct sys_reg_params {int dummy; } ;
struct sys_reg_desc {int dummy; } ;

/* Variables and functions */
 struct sys_reg_desc const* FUNC0 (struct sys_reg_params*,struct sys_reg_desc const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sys_reg_params*) ; 

const struct sys_reg_desc *FUNC2(u64 id,
					  struct sys_reg_params *params,
					  const struct sys_reg_desc table[],
					  unsigned int num)
{
	if (!FUNC1(id, params))
		return NULL;

	return FUNC0(params, table, num);
}