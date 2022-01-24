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
struct sysc {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (char const*) ; 
 char* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* stdout_path ; 

__attribute__((used)) static void FUNC4(struct sysc *ddata)
{
	struct device_node *np = NULL;
	const char *uart;

	if (FUNC1(stdout_path))
		return;

	if (stdout_path)
		return;

	np = FUNC2("/chosen");
	if (!np)
		goto err;

	uart = FUNC3(np, "stdout-path", NULL);
	if (!uart)
		goto err;

	np = FUNC2(uart);
	if (!np)
		goto err;

	stdout_path = np;

	return;

err:
	stdout_path = FUNC0(-ENODEV);
}