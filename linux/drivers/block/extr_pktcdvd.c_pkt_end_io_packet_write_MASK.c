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
struct TYPE_2__ {int /*<<< orphan*/  pkt_ended; } ;
struct pktcdvd_device {int /*<<< orphan*/  wqueue; TYPE_1__ stats; } ;
struct packet_data {int /*<<< orphan*/  run_sm; int /*<<< orphan*/  io_wait; int /*<<< orphan*/  id; struct pktcdvd_device* pd; } ;
struct bio {int /*<<< orphan*/  bi_status; struct packet_data* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pktcdvd_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct pktcdvd_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct bio *bio)
{
	struct packet_data *pkt = bio->bi_private;
	struct pktcdvd_device *pd = pkt->pd;
	FUNC0(!pd);

	FUNC4(2, pd, "id=%d, err=%d\n", pkt->id, bio->bi_status);

	pd->stats.pkt_ended++;

	FUNC3(pd);
	FUNC1(&pkt->io_wait);
	FUNC2(&pkt->run_sm);
	FUNC5(&pd->wqueue);
}