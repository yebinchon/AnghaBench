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
typedef  int /*<<< orphan*/  u64 ;
struct badblocks {int shift; int count; int changed; int unacked_exist; int /*<<< orphan*/  lock; int /*<<< orphan*/ * page; } ;
typedef  int sector_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int BB_MAX_LEN ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int MAX_BADBLOCKS ; 
 int /*<<< orphan*/  FUNC4 (struct badblocks*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(struct badblocks *bb, sector_t s, int sectors,
			int acknowledged)
{
	u64 *p;
	int lo, hi;
	int rv = 0;
	unsigned long flags;

	if (bb->shift < 0)
		/* badblocks are disabled */
		return 1;

	if (bb->shift) {
		/* round the start down, and the end up */
		sector_t next = s + sectors;

		s >>= bb->shift;
		next += (1<<bb->shift) - 1;
		next >>= bb->shift;
		sectors = next - s;
	}

	FUNC6(&bb->lock, flags);

	p = bb->page;
	lo = 0;
	hi = bb->count;
	/* Find the last range that starts at-or-before 's' */
	while (hi - lo > 1) {
		int mid = (lo + hi) / 2;
		sector_t a = FUNC3(p[mid]);

		if (a <= s)
			lo = mid;
		else
			hi = mid;
	}
	if (hi > lo && FUNC3(p[lo]) > s)
		hi = lo;

	if (hi > lo) {
		/* we found a range that might merge with the start
		 * of our new range
		 */
		sector_t a = FUNC3(p[lo]);
		sector_t e = a + FUNC1(p[lo]);
		int ack = FUNC0(p[lo]);

		if (e >= s) {
			/* Yes, we can merge with a previous range */
			if (s == a && s + sectors >= e)
				/* new range covers old */
				ack = acknowledged;
			else
				ack = ack && acknowledged;

			if (e < s + sectors)
				e = s + sectors;
			if (e - a <= BB_MAX_LEN) {
				p[lo] = FUNC2(a, e-a, ack);
				s = e;
			} else {
				/* does not all fit in one range,
				 * make p[lo] maximal
				 */
				if (FUNC1(p[lo]) != BB_MAX_LEN)
					p[lo] = FUNC2(a, BB_MAX_LEN, ack);
				s = a + BB_MAX_LEN;
			}
			sectors = e - s;
		}
	}
	if (sectors && hi < bb->count) {
		/* 'hi' points to the first range that starts after 's'.
		 * Maybe we can merge with the start of that range
		 */
		sector_t a = FUNC3(p[hi]);
		sector_t e = a + FUNC1(p[hi]);
		int ack = FUNC0(p[hi]);

		if (a <= s + sectors) {
			/* merging is possible */
			if (e <= s + sectors) {
				/* full overlap */
				e = s + sectors;
				ack = acknowledged;
			} else
				ack = ack && acknowledged;

			a = s;
			if (e - a <= BB_MAX_LEN) {
				p[hi] = FUNC2(a, e-a, ack);
				s = e;
			} else {
				p[hi] = FUNC2(a, BB_MAX_LEN, ack);
				s = a + BB_MAX_LEN;
			}
			sectors = e - s;
			lo = hi;
			hi++;
		}
	}
	if (sectors == 0 && hi < bb->count) {
		/* we might be able to combine lo and hi */
		/* Note: 's' is at the end of 'lo' */
		sector_t a = FUNC3(p[hi]);
		int lolen = FUNC1(p[lo]);
		int hilen = FUNC1(p[hi]);
		int newlen = lolen + hilen - (s - a);

		if (s >= a && newlen < BB_MAX_LEN) {
			/* yes, we can combine them */
			int ack = FUNC0(p[lo]) && FUNC0(p[hi]);

			p[lo] = FUNC2(FUNC3(p[lo]), newlen, ack);
			FUNC5(p + hi, p + hi + 1,
				(bb->count - hi - 1) * 8);
			bb->count--;
		}
	}
	while (sectors) {
		/* didn't merge (it all).
		 * Need to add a range just before 'hi'
		 */
		if (bb->count >= MAX_BADBLOCKS) {
			/* No room for more */
			rv = 1;
			break;
		} else {
			int this_sectors = sectors;

			FUNC5(p + hi + 1, p + hi,
				(bb->count - hi) * 8);
			bb->count++;

			if (this_sectors > BB_MAX_LEN)
				this_sectors = BB_MAX_LEN;
			p[hi] = FUNC2(s, this_sectors, acknowledged);
			sectors -= this_sectors;
			s += this_sectors;
		}
	}

	bb->changed = 1;
	if (!acknowledged)
		bb->unacked_exist = 1;
	else
		FUNC4(bb);
	FUNC7(&bb->lock, flags);

	return rv;
}