#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mpc52xx_ata_priv {TYPE_2__* dmatsk; } ;
struct ata_queued_cmd {struct ata_port* ap; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_4__ {int /*<<< orphan*/  tasknum; } ;
struct TYPE_3__ {struct mpc52xx_ata_priv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	struct mpc52xx_ata_priv *priv = ap->host->private_data;

	FUNC1(priv->dmatsk->tasknum, priv->dmatsk->tasknum);
	FUNC0(priv->dmatsk);
}