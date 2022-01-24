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
struct td {int hwINFO; int flags; int /*<<< orphan*/  td_dma; struct td* td_hash; } ;
struct admhcd {int /*<<< orphan*/  td_cache; struct td** td_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  TD_DONE ; 
 int TD_FLAG_DONE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct admhcd*,char*,struct td*) ; 
 int FUNC2 (struct admhcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct td*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct admhcd *ahcd, struct td *td)
{
	struct td **prev = &ahcd->td_hash[FUNC0(td->td_dma)];

	while (*prev && *prev != td)
		prev = &(*prev)->td_hash;
	if (*prev)
		*prev = td->td_hash;
#if 0
	/* TODO: remove */
	else if ((td->hwINFO & cpu_to_hc32(ahcd, TD_DONE)) != 0)
		admhc_dbg(ahcd, "no hash for td %p\n", td);
#else
	else if ((td->flags & TD_FLAG_DONE) != 0)
		FUNC1(ahcd, "no hash for td %p\n", td);
#endif
	FUNC3(ahcd->td_cache, td, td->td_dma);
}