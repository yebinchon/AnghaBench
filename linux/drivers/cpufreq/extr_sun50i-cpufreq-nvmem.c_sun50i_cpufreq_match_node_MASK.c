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
struct of_device_id {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (char*) ; 
 struct of_device_id* FUNC1 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  sun50i_cpufreq_match_list ; 

__attribute__((used)) static const struct of_device_id *FUNC3(void)
{
	const struct of_device_id *match;
	struct device_node *np;

	np = FUNC0("/");
	match = FUNC1(sun50i_cpufreq_match_list, np);
	FUNC2(np);

	return match;
}