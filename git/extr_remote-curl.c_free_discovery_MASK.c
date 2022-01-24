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
struct TYPE_2__ {struct discovery* oid; } ;
struct discovery {struct discovery* service; int /*<<< orphan*/  refs; struct discovery* buf_alloc; TYPE_1__ shallow; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct discovery*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct discovery* last_discovery ; 

__attribute__((used)) static void FUNC2(struct discovery *d)
{
	if (d) {
		if (d == last_discovery)
			last_discovery = NULL;
		FUNC0(d->shallow.oid);
		FUNC0(d->buf_alloc);
		FUNC1(d->refs);
		FUNC0(d->service);
		FUNC0(d);
	}
}