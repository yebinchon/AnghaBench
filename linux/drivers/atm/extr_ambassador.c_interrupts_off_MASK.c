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
typedef  int /*<<< orphan*/  amb_dev ;

/* Variables and functions */
 int AMB_INTERRUPT_BITS ; 
 int /*<<< orphan*/  amb_mem ; 
 int /*<<< orphan*/  interrupt_control ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3 (amb_dev * dev) {
  FUNC2 (dev, FUNC0(amb_mem, interrupt_control),
	    FUNC1 (dev, FUNC0(amb_mem, interrupt_control))
	    &~ AMB_INTERRUPT_BITS);
}