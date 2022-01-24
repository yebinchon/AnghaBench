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
struct td {int /*<<< orphan*/  td_dma; int /*<<< orphan*/  hwNextTD; } ;
struct admhcd {int /*<<< orphan*/  td_cache; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct admhcd*,int /*<<< orphan*/ ) ; 
 struct td* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct td*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct td *FUNC3(struct admhcd *ahcd, gfp_t mem_flags)
{
	dma_addr_t	dma;
	struct td	*td;

	td = FUNC1(ahcd->td_cache, mem_flags, &dma);
	if (!td)
		return NULL;

	/* in case ahcd fetches it, make it look dead */
	FUNC2(td, 0, sizeof *td);
	td->hwNextTD = FUNC0(ahcd, dma);
	td->td_dma = dma;
	/* hashed in td_fill */

	return td;
}