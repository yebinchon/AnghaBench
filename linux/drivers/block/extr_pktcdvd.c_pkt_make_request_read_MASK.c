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
struct TYPE_2__ {int /*<<< orphan*/  secs_r; } ;
struct pktcdvd_device {TYPE_1__ stats; int /*<<< orphan*/  bdev; } ;
struct packet_stacked_data {struct bio* bio; struct pktcdvd_device* pd; } ;
struct bio {int /*<<< orphan*/  bi_end_io; struct packet_stacked_data* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 struct bio* FUNC0 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 struct packet_stacked_data* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pkt_bio_set ; 
 int /*<<< orphan*/  pkt_end_io_read_cloned ; 
 int /*<<< orphan*/  FUNC4 (struct pktcdvd_device*,struct bio*) ; 
 int /*<<< orphan*/  psd_pool ; 

__attribute__((used)) static void FUNC5(struct pktcdvd_device *pd, struct bio *bio)
{
	struct bio *cloned_bio = FUNC0(bio, GFP_NOIO, &pkt_bio_set);
	struct packet_stacked_data *psd = FUNC3(&psd_pool, GFP_NOIO);

	psd->pd = pd;
	psd->bio = bio;
	FUNC2(cloned_bio, pd->bdev);
	cloned_bio->bi_private = psd;
	cloned_bio->bi_end_io = pkt_end_io_read_cloned;
	pd->stats.secs_r += FUNC1(bio);
	FUNC4(pd, cloned_bio);
}