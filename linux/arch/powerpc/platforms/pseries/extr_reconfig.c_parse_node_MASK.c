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
typedef  int /*<<< orphan*/  phandle ;

/* Variables and functions */
 struct device_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static char *FUNC3(char *buf, size_t bufsize, struct device_node **npp)
{
	char *handle_str;
	phandle handle;
	*npp = NULL;

	handle_str = buf;

	buf = FUNC2(buf, ' ');
	if (!buf)
		return NULL;
	*buf = '\0';
	buf++;

	handle = FUNC1(handle_str, NULL, 0);

	*npp = FUNC0(handle);
	return buf;
}