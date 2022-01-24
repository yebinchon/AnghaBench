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

/* Variables and functions */
 int /*<<< orphan*/  NR_PORTS ; 
 int /*<<< orphan*/  conf ; 
 int /*<<< orphan*/  def_conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int FUNC1(char *str)
{
	FUNC0(conf, NR_PORTS, &def_conf, str, "serial line");
	return 1;
}