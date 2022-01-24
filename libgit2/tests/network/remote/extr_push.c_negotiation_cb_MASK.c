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
struct TYPE_3__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  dst_refname; int /*<<< orphan*/  src_refname; } ;
typedef  TYPE_1__ git_push_update ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(const git_push_update **updates, size_t len, void *payload)
{
	const git_push_update *expected = payload;

	FUNC0(1, len);
	FUNC2(expected->src_refname, updates[0]->src_refname);
	FUNC2(expected->dst_refname, updates[0]->dst_refname);
	FUNC1(&expected->src, &updates[0]->src);
	FUNC1(&expected->dst, &updates[0]->dst);

	return 0;
}