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
typedef  int /*<<< orphan*/  xdfile_t ;
typedef  int /*<<< orphan*/  xdemitconf_t ;
typedef  int /*<<< orphan*/  dummy ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,long,char*,int) ; 

__attribute__((used)) static int FUNC1(xdfile_t *xdf, xdemitconf_t const *xecfg, long ri)
{
	char dummy[1];
	return FUNC0(xdf, xecfg, ri, dummy, sizeof(dummy)) >= 0;
}