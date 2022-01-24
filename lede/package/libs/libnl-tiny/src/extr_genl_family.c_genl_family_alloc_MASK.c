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
struct genl_family {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  genl_family_ops ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

struct genl_family *FUNC1(void)
{
	return (struct genl_family *) FUNC0(&genl_family_ops);
}