#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* visitors; void* hits; void* bw; } ;
typedef  TYPE_1__ GPercTotals ;
typedef  int /*<<< orphan*/  GModule ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,char*) ; 

void
FUNC1 (GModule module, GPercTotals * totals)
{
  totals->bw = FUNC0 (module, "bytes");
  totals->hits = FUNC0 (module, "hits");
  totals->visitors = FUNC0 (module, "visitors");
}