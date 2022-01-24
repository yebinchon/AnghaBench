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
struct packet_data {int /*<<< orphan*/  orig_bios; scalar_t__ cache_valid; } ;
struct bio {scalar_t__ bi_status; } ;
typedef  scalar_t__ blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct packet_data *pkt, blk_status_t status)
{
	struct bio *bio;

	if (status)
		pkt->cache_valid = 0;

	/* Finish all bios corresponding to this packet */
	while ((bio = FUNC1(&pkt->orig_bios))) {
		bio->bi_status = status;
		FUNC0(bio);
	}
}