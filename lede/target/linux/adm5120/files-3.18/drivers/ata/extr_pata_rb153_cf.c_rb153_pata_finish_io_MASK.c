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
struct rb153_cf_info {int /*<<< orphan*/  irq; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct rb153_cf_info* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_TYPE_LEVEL_HIGH ; 
 int /*<<< orphan*/  RB153_CF_IO_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct ata_port *ap)
{
	struct rb153_cf_info *info = ap->host->private_data;

	/* FIXME: Keep previous delay. If this is merely a fence then
	 * ata_sff_sync might be sufficient. */
	FUNC0(ap);
	FUNC2(RB153_CF_IO_DELAY);

	FUNC1(info->irq, IRQ_TYPE_LEVEL_HIGH);
}