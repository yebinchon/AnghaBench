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

/* Variables and functions */
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  _packbuilder ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	char hex[GIT_OID_HEXSZ+1]; hex[GIT_OID_HEXSZ] = '\0';

	FUNC4();

	FUNC3(_packbuilder, ".", 0, NULL, NULL);
	FUNC1(hex, FUNC2(_packbuilder));

	FUNC0(hex, "7f5fa362c664d68ba7221259be1cbd187434b2f0");
}