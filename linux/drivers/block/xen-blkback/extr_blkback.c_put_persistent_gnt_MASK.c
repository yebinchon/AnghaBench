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
struct xen_blkif_ring {int /*<<< orphan*/  persistent_gnt_in_use; } ;
struct persistent_gnt {int active; int /*<<< orphan*/  last_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct xen_blkif_ring *ring,
                               struct persistent_gnt *persistent_gnt)
{
	if (!persistent_gnt->active)
		FUNC1("freeing a grant already unused\n");
	persistent_gnt->last_used = jiffies;
	persistent_gnt->active = false;
	FUNC0(&ring->persistent_gnt_in_use);
}