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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (unsigned char const*,unsigned char const*) ; 
 int FUNC1 (int const) ; 

int FUNC2(const unsigned char *sha1, const uint32_t *fanout_nbo,
		 const unsigned char *table, size_t stride, uint32_t *result)
{
	uint32_t hi, lo;

	hi = FUNC1(fanout_nbo[*sha1]);
	lo = ((*sha1 == 0x0) ? 0 : FUNC1(fanout_nbo[*sha1 - 1]));

	while (lo < hi) {
		unsigned mi = lo + (hi - lo) / 2;
		int cmp = FUNC0(table + mi * stride, sha1);

		if (!cmp) {
			if (result)
				*result = mi;
			return 1;
		}
		if (cmp > 0)
			hi = mi;
		else
			lo = mi + 1;
	}

	if (result)
		*result = lo;
	return 0;
}