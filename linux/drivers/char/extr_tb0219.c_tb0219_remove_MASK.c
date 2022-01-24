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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TB0219_SIZE ; 
 int /*<<< orphan*/  TB0219_START ; 
 int /*<<< orphan*/  _machine_restart ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  old_machine_restart ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tb0219_base ; 

__attribute__((used)) static int FUNC2(struct platform_device *dev)
{
	_machine_restart = old_machine_restart;

	FUNC0(tb0219_base);
	tb0219_base = NULL;

	FUNC1(TB0219_START, TB0219_SIZE);

	return 0;
}