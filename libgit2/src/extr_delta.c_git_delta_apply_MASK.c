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
 int /*<<< orphan*/  FUNC0 (size_t,unsigned long) ; 
 scalar_t__ FUNC1 (size_t*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 unsigned char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (size_t*,unsigned char const**,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char const*,unsigned char) ; 

int FUNC9(
	void **out,
	size_t *out_len,
	const unsigned char *base,
	size_t base_len,
	const unsigned char *delta,
	size_t delta_len)
{
	const unsigned char *delta_end = delta + delta_len;
	size_t base_sz, res_sz, alloc_sz;
	unsigned char *res_dp;

	*out = NULL;
	*out_len = 0;

	/*
	 * Check that the base size matches the data we were given;
	 * if not we would underflow while accessing data from the
	 * base object, resulting in data corruption or segfault.
	 */
	if ((FUNC7(&base_sz, &delta, delta_end) < 0) || (base_sz != base_len)) {
		FUNC6(GIT_ERROR_INVALID, "failed to apply delta: base size does not match given data");
		return -1;
	}

	if (FUNC7(&res_sz, &delta, delta_end) < 0) {
		FUNC6(GIT_ERROR_INVALID, "failed to apply delta: base size does not match given data");
		return -1;
	}

	FUNC3(&alloc_sz, res_sz, 1);
	res_dp = FUNC5(alloc_sz);
	FUNC2(res_dp);

	res_dp[res_sz] = '\0';
	*out = res_dp;
	*out_len = res_sz;

	while (delta < delta_end) {
		unsigned char cmd = *delta++;
		if (cmd & 0x80) {
			/* cmd is a copy instruction; copy from the base. */
			size_t off = 0, len = 0, end;

#define ADD_DELTA(o, shift) { if (delta < delta_end) (o) |= ((unsigned) *delta++ << shift); else goto fail; }
			if (cmd & 0x01) ADD_DELTA(off, 0UL);
			if (cmd & 0x02) ADD_DELTA(off, 8UL);
			if (cmd & 0x04) ADD_DELTA(off, 16UL);
			if (cmd & 0x08) ADD_DELTA(off, 24UL);

			if (cmd & 0x10) ADD_DELTA(len, 0UL);
			if (cmd & 0x20) ADD_DELTA(len, 8UL);
			if (cmd & 0x40) ADD_DELTA(len, 16UL);
			if (!len)       len = 0x10000;
#undef ADD_DELTA

			if (FUNC1(&end, off, len) ||
			    base_len < end || res_sz < len)
				goto fail;

			FUNC8(res_dp, base + off, len);
			res_dp += len;
			res_sz -= len;

		} else if (cmd) {
			/*
			 * cmd is a literal insert instruction; copy from
			 * the delta stream itself.
			 */
			if (delta_end - delta < cmd || res_sz < cmd)
				goto fail;
			FUNC8(res_dp, delta, cmd);
			delta += cmd;
			res_dp += cmd;
			res_sz -= cmd;

		} else {
			/* cmd == 0 is reserved for future encodings. */
			goto fail;
		}
	}

	if (delta != delta_end || res_sz)
		goto fail;
	return 0;

fail:
	FUNC4(*out);

	*out = NULL;
	*out_len = 0;

	FUNC6(GIT_ERROR_INVALID, "failed to apply delta");
	return -1;
}