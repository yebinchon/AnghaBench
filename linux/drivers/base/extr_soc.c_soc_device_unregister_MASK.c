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
struct soc_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  soc_dev_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * early_soc_dev_attr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_ida ; 

void FUNC2(struct soc_device *soc_dev)
{
	FUNC1(&soc_ida, soc_dev->soc_dev_num);

	FUNC0(&soc_dev->dev);
	early_soc_dev_attr = NULL;
}