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
struct ata_taskfile {int /*<<< orphan*/  hob_lbah; int /*<<< orphan*/  hob_lbam; int /*<<< orphan*/  hob_lbal; int /*<<< orphan*/  hob_nsect; int /*<<< orphan*/  hob_feature; int /*<<< orphan*/  lbah; int /*<<< orphan*/  lbam; int /*<<< orphan*/  lbal; int /*<<< orphan*/  nsect; int /*<<< orphan*/  feature; int /*<<< orphan*/  device; int /*<<< orphan*/  flags; int /*<<< orphan*/  protocol; int /*<<< orphan*/  command; } ;
struct ata_port {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ata_port *ap, struct ata_taskfile *tf)
{
	FUNC0(ap->dev,
		"taskfile cmd: 0x%02x protocol: %s flags: 0x%lx device: %x\n",
		tf->command, FUNC1(tf->protocol), tf->flags,
		tf->device);
	FUNC0(ap->dev,
		"feature: 0x%02x nsect: 0x%x lbal: 0x%x lbam: 0x%x lbah: 0x%x\n",
		tf->feature, tf->nsect, tf->lbal, tf->lbam, tf->lbah);
	FUNC0(ap->dev,
		"hob_feature: 0x%02x hob_nsect: 0x%x hob_lbal: 0x%x hob_lbam: 0x%x hob_lbah: 0x%x\n",
		tf->hob_feature, tf->hob_nsect, tf->hob_lbal, tf->hob_lbam,
		tf->hob_lbah);
}