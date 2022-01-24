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
typedef  unsigned int u64 ;

/* Variables and functions */
 int /*<<< orphan*/  PS3_LPAR_ID_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ *) ; 

int FUNC3(unsigned int *port)
{
	int result;
	u64 v1 = 0;

	result = FUNC2(PS3_LPAR_ID_CURRENT,
		FUNC1("bi", 0),
		FUNC0("vir_uart", 0),
		FUNC0("port", 0),
		FUNC0("sysmgr", 0),
		&v1, NULL);
	*port = v1;
	return result;
}