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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  intel_pstate ; 
 int /*<<< orphan*/ * intel_pstate_driver ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC1(char *buf)
{
	if (!intel_pstate_driver)
		return FUNC0(buf, "off\n");

	return FUNC0(buf, "%s\n", intel_pstate_driver == &intel_pstate ?
					"active" : "passive");
}