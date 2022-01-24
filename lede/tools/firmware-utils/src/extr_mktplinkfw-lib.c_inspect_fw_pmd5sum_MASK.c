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
typedef  int uint8_t ;

/* Variables and functions */
 int MD5SUM_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

inline void FUNC1(const char *label, const uint8_t *val, const char *text)
{
	int i;

	FUNC0("%-23s:", label);
	for (i=0; i<MD5SUM_LEN; i++)
		FUNC0(" %02x", val[i]);
	FUNC0(" %s\n", text);
}