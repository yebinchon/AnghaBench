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
struct work_struct {int dummy; } ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_parts; int /*<<< orphan*/  parts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  concat_devs ; 
 struct mtd_info* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* multi_pdata ; 

__attribute__((used)) static void FUNC3(struct work_struct *work)
{
	struct mtd_info *mtd;

	mtd = FUNC1(concat_devs, FUNC0(concat_devs), "flash");

	FUNC2(mtd, multi_pdata->parts, multi_pdata->nr_parts);
}