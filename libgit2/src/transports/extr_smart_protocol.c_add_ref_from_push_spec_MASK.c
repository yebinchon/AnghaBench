#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  dst; } ;
struct TYPE_11__ {TYPE_1__ refspec; int /*<<< orphan*/  loid; } ;
typedef  TYPE_3__ push_spec ;
typedef  int /*<<< orphan*/  git_vector ;
struct TYPE_10__ {int /*<<< orphan*/  name; int /*<<< orphan*/  oid; } ;
struct TYPE_12__ {TYPE_2__ head; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ git_pkt_ref ;
typedef  int /*<<< orphan*/  git_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  GIT_PKT_REF ; 
 TYPE_4__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 

__attribute__((used)) static int FUNC6(git_vector *refs, push_spec *push_spec)
{
	git_pkt_ref *added = FUNC1(1, sizeof(git_pkt_ref));
	FUNC0(added);

	added->type = GIT_PKT_REF;
	FUNC3(&added->head.oid, &push_spec->loid);
	added->head.name = FUNC2(push_spec->refspec.dst);

	if (!added->head.name ||
		FUNC5(refs, added) < 0) {
		FUNC4((git_pkt *)added);
		return -1;
	}

	return 0;
}