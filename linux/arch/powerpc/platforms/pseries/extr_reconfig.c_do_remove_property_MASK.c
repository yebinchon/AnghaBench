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
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct device_node*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,size_t,struct device_node**) ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(char *buf, size_t bufsize)
{
	struct device_node *np;
	char *tmp;
	buf = FUNC2(buf, bufsize, &np);

	if (!np)
		return -ENODEV;

	tmp = FUNC3(buf,' ');
	if (tmp)
		*tmp = '\0';

	if (FUNC4(buf) == 0)
		return -EINVAL;

	return FUNC1(np, FUNC0(np, buf, NULL));
}