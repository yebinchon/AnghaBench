#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ common; } ;
typedef  TYPE_1__ transport_smart_caps ;
struct TYPE_8__ {int /*<<< orphan*/  oid; scalar_t__ local; } ;
typedef  TYPE_2__ git_remote_head ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int GIT_OID_HEXSZ ; 
 scalar_t__ FUNC0 (TYPE_2__ const* const,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 char* pkt_want_prefix ; 
 int FUNC6 (char*) ; 

int FUNC7(
	const git_remote_head * const *refs,
	size_t count,
	transport_smart_caps *caps,
	git_buf *buf)
{
	size_t i = 0;
	const git_remote_head *head;

	if (caps->common) {
		for (; i < count; ++i) {
			head = refs[i];
			if (!head->local)
				break;
		}

		if (FUNC0(refs[i], caps, buf) < 0)
			return -1;

		i++;
	}

	for (; i < count; ++i) {
		char oid[GIT_OID_HEXSZ];

		head = refs[i];
		if (head->local)
			continue;

		FUNC4(oid, &head->oid);
		FUNC2(buf, pkt_want_prefix, FUNC6(pkt_want_prefix));
		FUNC2(buf, oid, GIT_OID_HEXSZ);
		FUNC3(buf, '\n');
		if (FUNC1(buf))
			return -1;
	}

	return FUNC5(buf);
}