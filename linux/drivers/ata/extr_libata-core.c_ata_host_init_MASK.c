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
struct device {int dummy; } ;
struct ata_port_operations {int dummy; } ;
struct ata_host {int /*<<< orphan*/  kref; struct ata_port_operations* ops; struct device* dev; int /*<<< orphan*/  n_tags; int /*<<< orphan*/  eh_mutex; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_MAX_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ata_host *host, struct device *dev,
		   struct ata_port_operations *ops)
{
	FUNC2(&host->lock);
	FUNC1(&host->eh_mutex);
	host->n_tags = ATA_MAX_QUEUE;
	host->dev = dev;
	host->ops = ops;
	FUNC0(&host->kref);
}