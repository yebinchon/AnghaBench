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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(const char *str, size_t *n8, size_t *n16)
{
	uint32_t rune;
	char buf[4];
	uint16_t buf16[2];

	*n8 = 0;
	*n16 = 0;
	while (*str) {
		str = FUNC1(str, 0, &rune);
		// TODO document the use of the function vs a pointer subtract here
		// TODO also we need to consider namespace collision with utf.h...
		*n8 += FUNC2(rune, buf);
		*n16 += FUNC0(rune, buf16);
	}
}