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
typedef  int uint64_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  opal_con_id ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,unsigned char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(unsigned char c)
{
	int64_t rc;
	uint64_t olen, len;

	do {
		rc = FUNC3(opal_con_id, &olen);
		len = FUNC0(olen);
		if (rc)
			return;
		FUNC4(NULL);
	} while (len < 1);


	olen = FUNC1(1);
	FUNC2(opal_con_id, &olen, &c);
}