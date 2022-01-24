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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {size_t phy_devs; scalar_t__ phy_base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cphy_lock ; 
 TYPE_1__* port_data ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static u32 FUNC6(u8 sata_port, u32 addr)
{
	u32 data;
	u8 dev = port_data[sata_port].phy_devs;
	FUNC3(&cphy_lock);
	FUNC5(FUNC1(dev, addr), port_data[sata_port].phy_base + 0x800);
	data = FUNC2(port_data[sata_port].phy_base + FUNC0(addr));
	FUNC4(&cphy_lock);
	return data;
}