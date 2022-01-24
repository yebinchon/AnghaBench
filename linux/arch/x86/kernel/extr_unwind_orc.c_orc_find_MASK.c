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
struct orc_entry {int dummy; } ;

/* Variables and functions */
 unsigned long LOOKUP_BLOCK_SIZE ; 
 unsigned long LOOKUP_START_IP ; 
 unsigned long LOOKUP_STOP_IP ; 
 struct orc_entry* FUNC0 (unsigned int,scalar_t__,unsigned int,unsigned long) ; 
 scalar_t__ __start_orc_unwind ; 
 unsigned int __start_orc_unwind_ip ; 
 scalar_t__ __stop_orc_unwind ; 
 unsigned int __stop_orc_unwind_ip ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int lookup_num_blocks ; 
 struct orc_entry null_orc_entry ; 
 struct orc_entry* FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  orc_init ; 
 int* orc_lookup ; 
 struct orc_entry* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,int,unsigned int,...) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct orc_entry *FUNC6(unsigned long ip)
{
	static struct orc_entry *orc;

	if (!orc_init)
		return NULL;

	if (ip == 0)
		return &null_orc_entry;

	/* For non-init vmlinux addresses, use the fast lookup table: */
	if (ip >= LOOKUP_START_IP && ip < LOOKUP_STOP_IP) {
		unsigned int idx, start, stop;

		idx = (ip - LOOKUP_START_IP) / LOOKUP_BLOCK_SIZE;

		if (FUNC5((idx >= lookup_num_blocks-1))) {
			FUNC4("WARNING: bad lookup idx: idx=%u num=%u ip=%pB\n",
				 idx, lookup_num_blocks, (void *)ip);
			return NULL;
		}

		start = orc_lookup[idx];
		stop = orc_lookup[idx + 1] + 1;

		if (FUNC5((__start_orc_unwind + start >= __stop_orc_unwind) ||
			     (__start_orc_unwind + stop > __stop_orc_unwind))) {
			FUNC4("WARNING: bad lookup value: idx=%u num=%u start=%u stop=%u ip=%pB\n",
				 idx, lookup_num_blocks, start, stop, (void *)ip);
			return NULL;
		}

		return FUNC0(__start_orc_unwind_ip + start,
				  __start_orc_unwind + start, stop - start, ip);
	}

	/* vmlinux .init slow lookup: */
	if (FUNC1(ip))
		return FUNC0(__start_orc_unwind_ip, __start_orc_unwind,
				  __stop_orc_unwind_ip - __start_orc_unwind_ip, ip);

	/* Module lookup: */
	orc = FUNC3(ip);
	if (orc)
		return orc;

	return FUNC2(ip);
}