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
struct ata_queued_cmd {int /*<<< orphan*/  dev; struct ata_port* ap; } ;
struct ata_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;

	FUNC3(100);
	FUNC2(ap);
	FUNC3(100);

	/* Set the clocks for DMA */
	FUNC1(ap, qc->dev);
	/* Activate DMA */
	FUNC0(qc);
}