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
typedef  scalar_t__ u32 ;
struct skd_device {int dbg_level; TYPE_1__* pdev; scalar_t__* mem_map; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct skd_device *skdev, u32 val,
				   u32 offset)
{
	FUNC2(val, skdev->mem_map[1] + offset);
	if (FUNC1(skdev->dbg_level >= 2))
		FUNC0(&skdev->pdev->dev, "offset %x = %x\n", offset, val);
}