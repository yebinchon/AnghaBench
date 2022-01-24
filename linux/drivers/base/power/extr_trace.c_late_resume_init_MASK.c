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
 unsigned int FILEHASH ; 
 unsigned int USERHASH ; 
 unsigned int hash_value_early_read ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(void)
{
	unsigned int val = hash_value_early_read;
	unsigned int user, file, dev;

	user = val % USERHASH;
	val = val / USERHASH;
	file = val % FILEHASH;
	val = val / FILEHASH;
	dev = val /* % DEVHASH */;

	FUNC0("  Magic number: %d:%d:%d\n", user, file, dev);
	FUNC2(file);
	FUNC1(dev);
	return 0;
}