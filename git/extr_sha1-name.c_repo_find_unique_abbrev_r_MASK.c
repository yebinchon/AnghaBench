#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct repository {TYPE_1__* hash_algo; } ;
struct object_id {int dummy; } ;
struct min_abbrev_data {int init_len; int cur_len; char* hex; struct object_id const* oid; struct repository* repo; } ;
struct disambiguate_state {int always_call_fn; void* cb_data; int /*<<< orphan*/  fn; } ;
struct TYPE_2__ {unsigned int hexsz; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FALLBACK_DEFAULT_ABBREV ; 
 int /*<<< orphan*/  FUNC1 (struct min_abbrev_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct disambiguate_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct disambiguate_state*,struct object_id*) ; 
 scalar_t__ FUNC4 (struct repository*,char*,int,struct disambiguate_state*) ; 
 int FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct object_id const*) ; 
 unsigned long FUNC7 (struct repository*) ; 
 int /*<<< orphan*/  repo_extend_abbrev_len ; 

int FUNC8(struct repository *r, char *hex,
			      const struct object_id *oid, int len)
{
	struct disambiguate_state ds;
	struct min_abbrev_data mad;
	struct object_id oid_ret;
	const unsigned hexsz = r->hash_algo->hexsz;

	if (len < 0) {
		unsigned long count = FUNC7(r);
		/*
		 * Add one because the MSB only tells us the highest bit set,
		 * not including the value of all the _other_ bits (so "15"
		 * is only one off of 2^4, but the MSB is the 3rd bit.
		 */
		len = FUNC5(count) + 1;
		/*
		 * We now know we have on the order of 2^len objects, which
		 * expects a collision at 2^(len/2). But we also care about hex
		 * chars, not bits, and there are 4 bits per hex. So all
		 * together we need to divide by 2 and round up.
		 */
		len = FUNC0(len, 2);
		/*
		 * For very small repos, we stick with our regular fallback.
		 */
		if (len < FALLBACK_DEFAULT_ABBREV)
			len = FALLBACK_DEFAULT_ABBREV;
	}

	FUNC6(hex, oid);
	if (len == hexsz || !len)
		return hexsz;

	mad.repo = r;
	mad.init_len = len;
	mad.cur_len = len;
	mad.hex = hex;
	mad.oid = oid;

	FUNC1(&mad);

	if (FUNC4(r, hex, mad.cur_len, &ds) < 0)
		return -1;

	ds.fn = repo_extend_abbrev_len;
	ds.always_call_fn = 1;
	ds.cb_data = (void *)&mad;

	FUNC2(&ds);
	(void)FUNC3(&ds, &oid_ret);

	hex[mad.cur_len] = 0;
	return mad.cur_len;
}