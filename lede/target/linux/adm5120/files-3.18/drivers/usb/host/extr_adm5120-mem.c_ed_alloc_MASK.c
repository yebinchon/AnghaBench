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
struct ed {int /*<<< orphan*/  urb_list; int /*<<< orphan*/  td_list; int /*<<< orphan*/  dma; } ;
struct admhcd {int /*<<< orphan*/  ed_cache; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ed* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ed*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ed *FUNC3(struct admhcd *ahcd, gfp_t mem_flags)
{
	dma_addr_t	dma;
	struct ed	*ed;

	ed = FUNC1(ahcd->ed_cache, mem_flags, &dma);
	if (!ed)
		return NULL;

	FUNC2(ed, 0, sizeof(*ed));
	ed->dma = dma;

	FUNC0(&ed->td_list);
	FUNC0(&ed->urb_list);

	return ed;
}