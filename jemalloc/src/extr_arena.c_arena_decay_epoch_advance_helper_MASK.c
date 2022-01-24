#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nstime_t ;
struct TYPE_6__ {int /*<<< orphan*/  epoch; int /*<<< orphan*/  const interval; } ;
typedef  TYPE_1__ arena_decay_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(arena_decay_t *decay, const nstime_t *time,
    size_t current_npages) {
	FUNC3(FUNC2(decay, time));

	nstime_t delta;
	FUNC5(&delta, time);
	FUNC8(&delta, &decay->epoch);

	uint64_t nadvance_u64 = FUNC6(&delta, &decay->interval);
	FUNC3(nadvance_u64 > 0);

	/* Add nadvance_u64 decay intervals to epoch. */
	FUNC5(&delta, &decay->interval);
	FUNC7(&delta, nadvance_u64);
	FUNC4(&decay->epoch, &delta);

	/* Set a new deadline. */
	FUNC1(decay);

	/* Update the backlog. */
	FUNC0(decay, nadvance_u64, current_npages);
}