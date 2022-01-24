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
 int NOTIFY_DONE ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned long,void*) ; 
 int /*<<< orphan*/  crypto_chain ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(unsigned long val, void *v)
{
	int ok;

	ok = FUNC0(&crypto_chain, val, v);
	if (ok == NOTIFY_DONE) {
		FUNC1("cryptomgr");
		ok = FUNC0(&crypto_chain, val, v);
	}

	return ok;
}