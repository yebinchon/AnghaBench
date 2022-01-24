#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  file_name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* bootext_block ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 

int
FUNC4(uint16_t *magic)
{
	FILE *f;
	int res;

	errno = 0;
	f = FUNC2(bootext_block->file_name,"r");
	if (errno) {
		FUNC0("unable to open file: %s", bootext_block->file_name);
		return -1;
	}

	errno = 0;
	FUNC3(magic, 2, 1, f);
	if (errno != 0) {
		FUNC0("unable to read from file: %s", bootext_block->file_name);
		res = -1;
		goto err;
	}

	res = 0;

err:
	FUNC1(f);
	return res;
}