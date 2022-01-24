#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct request {int transmit_me; scalar_t__ tx_count; int /*<<< orphan*/  reissue_count; struct nameserver const* const ns; int /*<<< orphan*/  base; } ;
typedef  struct nameserver const nameserver ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct request *req) {
	const struct nameserver *const last_ns = req->ns;
	FUNC0(req->base);
	FUNC1(req);
	/* the last nameserver should have been marked as failing */
	/* by the caller of this function, therefore pick will try */
	/* not to return it */
	FUNC3(req, FUNC2(req->base));
	if (req->ns == last_ns) {
		/* ... but pick did return it */
		/* not a lot of point in trying again with the */
		/* same server */
		return 1;
	}

	req->reissue_count++;
	req->tx_count = 0;
	req->transmit_me = 1;

	return 0;
}