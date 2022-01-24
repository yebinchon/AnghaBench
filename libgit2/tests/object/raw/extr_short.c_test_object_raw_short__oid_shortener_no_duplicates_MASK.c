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
typedef  int /*<<< orphan*/  git_oid_shorten ;

/* Variables and functions */
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	git_oid_shorten *os;
	int min_len;

	os = FUNC3(0);
	FUNC0(os != NULL);

	FUNC1(os, "22596363b3de40b06f981fb85d82312e8c0ed511");
	FUNC1(os, "ce08fe4884650f067bd5703b6a59a8b3b3c99a09");
	FUNC1(os, "16a0123456789abcdef4b775213c23a8bd74f5e0");
	min_len = FUNC1(os, "ce08fe4884650f067bd5703b6a59a8b3b3c99a09");

	FUNC0(min_len == GIT_OID_HEXSZ + 1);

	FUNC2(os);
}