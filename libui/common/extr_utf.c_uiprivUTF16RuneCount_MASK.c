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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__* FUNC0 (scalar_t__ const*,size_t,int /*<<< orphan*/ *) ; 

size_t FUNC1(const uint16_t *s, size_t nElem)
{
	size_t len;
	uint32_t rune;

	if (nElem != 0) {
		const uint16_t *t, *u;

		len = 0;
		t = s;
		while (nElem != 0) {
			u = FUNC0(t, nElem, &rune);
			len++;
			nElem -= u - t;
			t = u;
		}
		return len;
	}
	len = 0;
	while (*s) {
		s = FUNC0(s, nElem, &rune);
		len++;
	}
	return len;
}