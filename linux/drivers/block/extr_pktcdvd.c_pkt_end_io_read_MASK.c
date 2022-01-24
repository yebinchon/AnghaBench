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
struct pktcdvd_device {int /*<<< orphan*/  wqueue; } ;
struct packet_data {int /*<<< orphan*/  run_sm; int /*<<< orphan*/  io_wait; int /*<<< orphan*/  io_errors; scalar_t__ sector; struct pktcdvd_device* pd; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {int /*<<< orphan*/  bi_status; TYPE_1__ bi_iter; struct packet_data* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pktcdvd_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct pktcdvd_device*,char*,struct bio*,unsigned long long,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct bio *bio)
{
	struct packet_data *pkt = bio->bi_private;
	struct pktcdvd_device *pd = pkt->pd;
	FUNC0(!pd);

	FUNC4(2, pd, "bio=%p sec0=%llx sec=%llx err=%d\n",
		bio, (unsigned long long)pkt->sector,
		(unsigned long long)bio->bi_iter.bi_sector, bio->bi_status);

	if (bio->bi_status)
		FUNC2(&pkt->io_errors);
	if (FUNC1(&pkt->io_wait)) {
		FUNC2(&pkt->run_sm);
		FUNC5(&pd->wqueue);
	}
	FUNC3(pd);
}