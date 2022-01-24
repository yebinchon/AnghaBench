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
struct platform_device {int dummy; } ;
struct pata_pxa_data {int /*<<< orphan*/  dma_chan; } ;
struct ata_host {TYPE_1__** ports; } ;
struct TYPE_2__ {struct pata_pxa_data* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ata_host* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct ata_host *host = FUNC2(pdev);
	struct pata_pxa_data *data = host->ports[0]->private_data;

	FUNC1(data->dma_chan);

	FUNC0(host);

	return 0;
}