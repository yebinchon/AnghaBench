#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * msg; void* ref; } ;
typedef  TYPE_1__ push_status ;
struct TYPE_14__ {int /*<<< orphan*/  unpack_ok; int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ git_push ;
struct TYPE_15__ {int /*<<< orphan*/  unpack_ok; } ;
typedef  TYPE_3__ git_pkt_unpack ;
struct TYPE_16__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_4__ git_pkt_ok ;
struct TYPE_17__ {int /*<<< orphan*/  msg; int /*<<< orphan*/  ref; } ;
typedef  TYPE_5__ git_pkt_ng ;
struct TYPE_18__ {int type; } ;
typedef  TYPE_6__ git_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GIT_ERROR_NET ; 
 int GIT_ITEROVER ; 
#define  GIT_PKT_FLUSH 131 
#define  GIT_PKT_NG 130 
#define  GIT_PKT_OK 129 
#define  GIT_PKT_UNPACK 128 
 TYPE_1__* FUNC1 (int,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(git_push *push, git_pkt *pkt)
{
	push_status *status;

	switch (pkt->type) {
		case GIT_PKT_OK:
			status = FUNC1(1, sizeof(push_status));
			FUNC0(status);
			status->msg = NULL;
			status->ref = FUNC2(((git_pkt_ok *)pkt)->ref);
			if (!status->ref ||
				FUNC5(&push->status, status) < 0) {
				FUNC4(status);
				return -1;
			}
			break;
		case GIT_PKT_NG:
			status = FUNC1(1, sizeof(push_status));
			FUNC0(status);
			status->ref = FUNC2(((git_pkt_ng *)pkt)->ref);
			status->msg = FUNC2(((git_pkt_ng *)pkt)->msg);
			if (!status->ref || !status->msg ||
				FUNC5(&push->status, status) < 0) {
				FUNC4(status);
				return -1;
			}
			break;
		case GIT_PKT_UNPACK:
			push->unpack_ok = ((git_pkt_unpack *)pkt)->unpack_ok;
			break;
		case GIT_PKT_FLUSH:
			return GIT_ITEROVER;
		default:
			FUNC3(GIT_ERROR_NET, "report-status: protocol error");
			return -1;
	}

	return 0;
}