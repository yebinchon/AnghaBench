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
struct nbd_device {TYPE_1__* disk; struct nbd_config* config; } ;
struct nbd_config {int flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int NBD_FLAG_READ_ONLY ; 
 int NBD_FLAG_SEND_FLUSH ; 
 int NBD_FLAG_SEND_FUA ; 
 int NBD_FLAG_SEND_TRIM ; 
 int /*<<< orphan*/  QUEUE_FLAG_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC3(struct nbd_device *nbd)
{
	struct nbd_config *config = nbd->config;
	if (config->flags & NBD_FLAG_READ_ONLY)
		FUNC2(nbd->disk, true);
	else
		FUNC2(nbd->disk, false);
	if (config->flags & NBD_FLAG_SEND_TRIM)
		FUNC0(QUEUE_FLAG_DISCARD, nbd->disk->queue);
	if (config->flags & NBD_FLAG_SEND_FLUSH) {
		if (config->flags & NBD_FLAG_SEND_FUA)
			FUNC1(nbd->disk->queue, true, true);
		else
			FUNC1(nbd->disk->queue, true, false);
	}
	else
		FUNC1(nbd->disk->queue, false, false);
}