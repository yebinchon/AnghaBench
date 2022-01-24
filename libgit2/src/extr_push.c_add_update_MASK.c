#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_11__ {int /*<<< orphan*/  loid; int /*<<< orphan*/  roid; TYPE_1__ refspec; } ;
typedef  TYPE_2__ push_spec ;
struct TYPE_12__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; struct TYPE_12__* dst_refname; struct TYPE_12__* src_refname; } ;
typedef  TYPE_3__ git_push_update ;
struct TYPE_13__ {int /*<<< orphan*/  updates; } ;
typedef  TYPE_4__ git_push ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(git_push *push, push_spec *spec)
{
	git_push_update *u = FUNC1(1, sizeof(git_push_update));
	FUNC0(u);

	u->src_refname = FUNC2(spec->refspec.src);
	FUNC0(u->src_refname);

	u->dst_refname = FUNC2(spec->refspec.dst);
	FUNC0(u->dst_refname);

	FUNC3(&u->src, &spec->roid);
	FUNC3(&u->dst, &spec->loid);

	return FUNC4(&push->updates, u);
}