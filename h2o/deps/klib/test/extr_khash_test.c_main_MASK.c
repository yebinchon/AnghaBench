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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  data_size ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ht_khash_int ; 
 int /*<<< orphan*/  ht_khash_packed ; 
 int /*<<< orphan*/  ht_khash_str ; 
 int /*<<< orphan*/  ht_khash_unpack ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(int argc, char *argv[])
{
	if (argc > 1) data_size = FUNC0(argv[1]);
	FUNC2();
	FUNC3(ht_khash_int);
	FUNC3(ht_khash_str);
	FUNC3(ht_khash_unpack);
	FUNC3(ht_khash_packed);
	FUNC1();
	return 0;
}