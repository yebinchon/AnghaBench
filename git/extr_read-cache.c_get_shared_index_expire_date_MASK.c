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
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shared_index_expire ; 

__attribute__((used)) static unsigned long FUNC2(void)
{
	static unsigned long shared_index_expire_date;
	static int shared_index_expire_date_prepared;

	if (!shared_index_expire_date_prepared) {
		FUNC1("splitindex.sharedindexexpire",
				      &shared_index_expire);
		shared_index_expire_date = FUNC0(shared_index_expire);
		shared_index_expire_date_prepared = 1;
	}

	return shared_index_expire_date;
}