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
struct entropy_store {int entropy_count; int initialized; int /*<<< orphan*/  push_work; TYPE_1__* poolinfo; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int poolfracbits; int poolbitshift; int poolbytes; } ;

/* Variables and functions */
 int FUNC0 (struct entropy_store*) ; 
 int ENTROPY_SHIFT ; 
 int /*<<< orphan*/  POLL_IN ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 struct entropy_store blocking_pool ; 
 int FUNC3 (int*,int,int) ; 
 int crng_init ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct entropy_store*) ; 
 int /*<<< orphan*/  fasync ; 
 struct entropy_store input_pool ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int,int const) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  primary_crng ; 
 int /*<<< orphan*/  random_read_wait ; 
 int random_read_wakeup_bits ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct entropy_store *r, int nbits)
{
	int entropy_count, orig, has_initialized = 0;
	const int pool_size = r->poolinfo->poolfracbits;
	int nfrac = nbits << ENTROPY_SHIFT;

	if (!nbits)
		return;

retry:
	entropy_count = orig = FUNC1(r->entropy_count);
	if (nfrac < 0) {
		/* Debit */
		entropy_count += nfrac;
	} else {
		/*
		 * Credit: we have to account for the possibility of
		 * overwriting already present entropy.	 Even in the
		 * ideal case of pure Shannon entropy, new contributions
		 * approach the full value asymptotically:
		 *
		 * entropy <- entropy + (pool_size - entropy) *
		 *	(1 - exp(-add_entropy/pool_size))
		 *
		 * For add_entropy <= pool_size/2 then
		 * (1 - exp(-add_entropy/pool_size)) >=
		 *    (add_entropy/pool_size)*0.7869...
		 * so we can approximate the exponential with
		 * 3/4*add_entropy/pool_size and still be on the
		 * safe side by adding at most pool_size/2 at a time.
		 *
		 * The use of pool_size-2 in the while statement is to
		 * prevent rounding artifacts from making the loop
		 * arbitrarily long; this limits the loop to log2(pool_size)*2
		 * turns no matter how large nbits is.
		 */
		int pnfrac = nfrac;
		const int s = r->poolinfo->poolbitshift + ENTROPY_SHIFT + 2;
		/* The +2 corresponds to the /4 in the denominator */

		do {
			unsigned int anfrac = FUNC6(pnfrac, pool_size/2);
			unsigned int add =
				((pool_size - entropy_count)*anfrac*3) >> s;

			entropy_count += add;
			pnfrac -= anfrac;
		} while (FUNC10(entropy_count < pool_size-2 && pnfrac));
	}

	if (FUNC10(entropy_count < 0)) {
		FUNC7("random: negative entropy/overflow: pool %s count %d\n",
			r->name, entropy_count);
		FUNC2(1);
		entropy_count = 0;
	} else if (entropy_count > pool_size)
		entropy_count = pool_size;
	if ((r == &blocking_pool) && !r->initialized &&
	    (entropy_count >> ENTROPY_SHIFT) > 128)
		has_initialized = 1;
	if (FUNC3(&r->entropy_count, orig, entropy_count) != orig)
		goto retry;

	if (has_initialized) {
		r->initialized = 1;
		FUNC11(&random_read_wait);
		FUNC5(&fasync, SIGIO, POLL_IN);
	}

	FUNC9(r->name, nbits,
				  entropy_count >> ENTROPY_SHIFT, _RET_IP_);

	if (r == &input_pool) {
		int entropy_bits = entropy_count >> ENTROPY_SHIFT;
		struct entropy_store *other = &blocking_pool;

		if (crng_init < 2) {
			if (entropy_bits < 128)
				return;
			FUNC4(&primary_crng, r);
			entropy_bits = r->entropy_count >> ENTROPY_SHIFT;
		}

		/* initialize the blocking pool if necessary */
		if (entropy_bits >= random_read_wakeup_bits &&
		    !other->initialized) {
			FUNC8(&other->push_work);
			return;
		}

		/* should we wake readers? */
		if (entropy_bits >= random_read_wakeup_bits &&
		    FUNC13(&random_read_wait)) {
			FUNC11(&random_read_wait);
			FUNC5(&fasync, SIGIO, POLL_IN);
		}
		/* If the input pool is getting full, and the blocking
		 * pool has room, send some entropy to the blocking
		 * pool.
		 */
		if (!FUNC12(&other->push_work) &&
		    (FUNC0(r) > 6 * r->poolinfo->poolbytes) &&
		    (FUNC0(other) <= 6 * other->poolinfo->poolbytes))
			FUNC8(&other->push_work);
	}
}