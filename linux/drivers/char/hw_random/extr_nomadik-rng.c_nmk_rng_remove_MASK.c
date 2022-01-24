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
struct amba_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rng_clk ; 

__attribute__((used)) static int FUNC2(struct amba_device *dev)
{
	FUNC0(dev);
	FUNC1(rng_clk);
	return 0;
}