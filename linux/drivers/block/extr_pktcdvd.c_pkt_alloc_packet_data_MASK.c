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
struct packet_data {int frames; struct bio* w_bio; scalar_t__* pages; struct bio** r_bios; int /*<<< orphan*/  orig_bios; int /*<<< orphan*/  lock; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int FRAMES_PER_PAGE ; 
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct packet_data*) ; 
 struct packet_data* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct packet_data *FUNC8(int frames)
{
	int i;
	struct packet_data *pkt;

	pkt = FUNC6(sizeof(struct packet_data), GFP_KERNEL);
	if (!pkt)
		goto no_pkt;

	pkt->frames = frames;
	pkt->w_bio = FUNC2(GFP_KERNEL, frames);
	if (!pkt->w_bio)
		goto no_bio;

	for (i = 0; i < frames / FRAMES_PER_PAGE; i++) {
		pkt->pages[i] = FUNC1(GFP_KERNEL|__GFP_ZERO);
		if (!pkt->pages[i])
			goto no_page;
	}

	FUNC7(&pkt->lock);
	FUNC3(&pkt->orig_bios);

	for (i = 0; i < frames; i++) {
		struct bio *bio = FUNC2(GFP_KERNEL, 1);
		if (!bio)
			goto no_rd_bio;

		pkt->r_bios[i] = bio;
	}

	return pkt;

no_rd_bio:
	for (i = 0; i < frames; i++) {
		struct bio *bio = pkt->r_bios[i];
		if (bio)
			FUNC4(bio);
	}

no_page:
	for (i = 0; i < frames / FRAMES_PER_PAGE; i++)
		if (pkt->pages[i])
			FUNC0(pkt->pages[i]);
	FUNC4(pkt->w_bio);
no_bio:
	FUNC5(pkt);
no_pkt:
	return NULL;
}