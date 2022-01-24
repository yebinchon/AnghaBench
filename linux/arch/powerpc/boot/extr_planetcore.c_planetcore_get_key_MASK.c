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
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int) ; 

const char *FUNC2(const char *table, const char *key)
{
	int keylen = FUNC0(key);

	do {
		if (!FUNC1(table, key, keylen) && table[keylen] == '=')
			return table + keylen + 1;

		table += FUNC0(table) + 1;
	} while (FUNC0(table) != 0);

	return NULL;
}