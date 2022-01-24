#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ dlen; int /*<<< orphan*/  data; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ object_data ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ git_rawobj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(git_rawobj *o, object_data *d)
{
	FUNC0(o->type == FUNC1(d->type));
	FUNC0(o->len == d->dlen);

	if (o->len > 0)
		FUNC0(FUNC2(o->data, d->data, o->len) == 0);
}