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
typedef  int /*<<< orphan*/  key_ref_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int KEY_ALLOC_BUILT_IN ; 
 int KEY_ALLOC_NOT_IN_QUOTA ; 
 int KEY_POS_ALL ; 
 int KEY_POS_SETATTR ; 
 int KEY_USR_VIEW ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blacklist_keyring ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(const char *hash)
{
	key_ref_t key;

	key = FUNC2(FUNC3(blacklist_keyring, true),
				   "blacklist",
				   hash,
				   NULL,
				   0,
				   ((KEY_POS_ALL & ~KEY_POS_SETATTR) |
				    KEY_USR_VIEW),
				   KEY_ALLOC_NOT_IN_QUOTA |
				   KEY_ALLOC_BUILT_IN);
	if (FUNC0(key)) {
		FUNC4("Problem blacklisting hash (%ld)\n", FUNC1(key));
		return FUNC1(key);
	}
	return 0;
}