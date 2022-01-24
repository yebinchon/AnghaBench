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
typedef  int /*<<< orphan*/  u32 ;
struct brcmstb_gisb_arb_device {int* gisb_offsets; scalar_t__ base; scalar_t__ big_endian; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct brcmstb_gisb_arb_device *gdev, u32 val, int reg)
{
	int offset = gdev->gisb_offsets[reg];

	if (offset == -1)
		return;

	if (gdev->big_endian)
		FUNC1(val, gdev->base + offset);
	else
		FUNC0(val, gdev->base + offset);
}