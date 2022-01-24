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
struct nl_object {int dummy; } ;
struct genl_family {int /*<<< orphan*/  gf_mc_grps; int /*<<< orphan*/  gf_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct nl_object *c)
{
	struct genl_family *family = (struct genl_family *) c;

	FUNC0(&family->gf_ops);
	FUNC0(&family->gf_mc_grps);
}