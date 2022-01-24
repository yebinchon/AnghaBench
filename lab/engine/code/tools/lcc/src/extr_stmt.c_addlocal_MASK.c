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
struct TYPE_5__ {TYPE_2__* var; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
struct TYPE_6__ {int defined; int /*<<< orphan*/  scope; } ;
typedef  TYPE_2__* Symbol ;

/* Variables and functions */
 int /*<<< orphan*/  Local ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  level ; 

void FUNC1(Symbol p) {
	if (!p->defined) {
		FUNC0(Local)->u.var = p;
		p->defined = 1;
		p->scope = level;
	}
}