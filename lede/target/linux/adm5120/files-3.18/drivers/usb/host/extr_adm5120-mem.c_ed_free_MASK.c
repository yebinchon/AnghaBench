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
struct ed {int /*<<< orphan*/  dma; } ;
struct admhcd {int /*<<< orphan*/  ed_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ed*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct admhcd *ahcd, struct ed *ed)
{
	FUNC0(ahcd->ed_cache, ed, ed->dma);
}