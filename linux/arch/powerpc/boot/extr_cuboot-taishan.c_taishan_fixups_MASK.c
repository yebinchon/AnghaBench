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
struct TYPE_2__ {int /*<<< orphan*/  bi_enet1addr; int /*<<< orphan*/  bi_enetaddr; } ;

/* Variables and functions */
 TYPE_1__ bd ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	/* FIXME: sysclk should be derived by reading the FPGA
	   registers */
	unsigned long sysclk = 33000000;

	FUNC1(sysclk, 6 * 1843200, 25000000);

	FUNC3();

	FUNC0("ethernet0", bd.bi_enetaddr);
	FUNC0("ethernet1", bd.bi_enet1addr);

	FUNC2("/plb/opb/ebc");
}