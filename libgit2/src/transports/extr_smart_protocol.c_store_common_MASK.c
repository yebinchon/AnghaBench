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
struct TYPE_7__ {int /*<<< orphan*/  common; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ transport_smart ;
typedef  int /*<<< orphan*/  gitno_buffer ;
struct TYPE_8__ {scalar_t__ type; } ;
typedef  TYPE_2__ git_pkt ;

/* Variables and functions */
 scalar_t__ GIT_PKT_ACK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC2 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(transport_smart *t)
{
	git_pkt *pkt = NULL;
	gitno_buffer *buf = &t->buffer;
	int error;

	do {
		if ((error = FUNC2(&pkt, NULL, buf)) < 0)
			return error;

		if (pkt->type != GIT_PKT_ACK) {
			FUNC0(pkt);
			return 0;
		}

		if (FUNC1(&t->common, pkt) < 0) {
			FUNC0(pkt);
			return -1;
		}
	} while (1);

	return 0;
}