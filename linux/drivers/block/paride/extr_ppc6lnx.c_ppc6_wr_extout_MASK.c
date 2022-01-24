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
typedef  int u8 ;
typedef  int /*<<< orphan*/  Interface ;

/* Variables and functions */
 int ACCESS_REG ; 
 int ACCESS_WRITE ; 
 int REG_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(Interface *ppc, u8 regdata)
{
	FUNC0(ppc,(REG_VERSION | ACCESS_REG | ACCESS_WRITE));

	FUNC1(ppc, (u8)((regdata & 0x03) << 6));
}