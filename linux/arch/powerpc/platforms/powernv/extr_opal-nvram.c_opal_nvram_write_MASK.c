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
typedef  size_t ssize_t ;
typedef  scalar_t__ s64 ;
typedef  int loff_t ;

/* Variables and functions */
 size_t EIO ; 
 scalar_t__ OPAL_BUSY ; 
 int /*<<< orphan*/  OPAL_BUSY_DELAY_MS ; 
 scalar_t__ OPAL_BUSY_EVENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int nvram_size ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static ssize_t FUNC7(char *buf, size_t count, loff_t *index)
{
	s64 rc = OPAL_BUSY;
	int off;

	if (*index >= nvram_size)
		return 0;
	off = *index;
	if ((off + count) > nvram_size)
		count = nvram_size - off;

	while (rc == OPAL_BUSY || rc == OPAL_BUSY_EVENT) {
		rc = FUNC6(FUNC0(buf), count, off);
		if (rc == OPAL_BUSY_EVENT) {
			if (FUNC1() || FUNC2())
				FUNC3(OPAL_BUSY_DELAY_MS);
			else
				FUNC4(OPAL_BUSY_DELAY_MS);
			FUNC5(NULL);
		} else if (rc == OPAL_BUSY) {
			if (FUNC1() || FUNC2())
				FUNC3(OPAL_BUSY_DELAY_MS);
			else
				FUNC4(OPAL_BUSY_DELAY_MS);
		}
	}

	if (rc)
		return -EIO;

	*index += count;
	return count;
}