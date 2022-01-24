#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  scalar_t__ szind_t ;
struct TYPE_7__ {TYPE_1__* lstats; } ;
struct TYPE_6__ {TYPE_3__ stats; } ;
typedef  TYPE_2__ arena_t ;
struct TYPE_5__ {int /*<<< orphan*/  ndalloc; } ;

/* Variables and functions */
 size_t SC_LARGE_MINCLASS ; 
 scalar_t__ SC_NBINS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_stats ; 
 scalar_t__ FUNC2 (size_t) ; 

__attribute__((used)) static void
FUNC3(tsdn_t *tsdn, arena_t *arena, size_t usize) {
	szind_t index, hindex;

	FUNC1(config_stats);

	if (usize < SC_LARGE_MINCLASS) {
		usize = SC_LARGE_MINCLASS;
	}
	index = FUNC2(usize);
	hindex = (index >= SC_NBINS) ? index - SC_NBINS : 0;

	FUNC0(tsdn, &arena->stats,
	    &arena->stats.lstats[hindex].ndalloc, 1);
}