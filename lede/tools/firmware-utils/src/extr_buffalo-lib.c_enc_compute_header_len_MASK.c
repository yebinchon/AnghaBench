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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 unsigned long ENC_MAGIC_LEN ; 
 unsigned long FUNC0 (char*) ; 

unsigned long FUNC1(char *product, char *version)
{
	return ENC_MAGIC_LEN + 1 + FUNC0(product) + 1 +
	       FUNC0(version) + 1 + 3 * sizeof(uint32_t);
}