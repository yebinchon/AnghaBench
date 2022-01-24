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
typedef  int u16 ;
struct vmcs_host_state {int fs_sel; int gs_sel; unsigned long fs_base; unsigned long gs_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_FS_BASE ; 
 int /*<<< orphan*/  HOST_FS_SELECTOR ; 
 int /*<<< orphan*/  HOST_GS_BASE ; 
 int /*<<< orphan*/  HOST_GS_SELECTOR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC3(struct vmcs_host_state *host, u16 fs_sel, u16 gs_sel,
			unsigned long fs_base, unsigned long gs_base)
{
	if (FUNC0(fs_sel != host->fs_sel)) {
		if (!(fs_sel & 7))
			FUNC1(HOST_FS_SELECTOR, fs_sel);
		else
			FUNC1(HOST_FS_SELECTOR, 0);
		host->fs_sel = fs_sel;
	}
	if (FUNC0(gs_sel != host->gs_sel)) {
		if (!(gs_sel & 7))
			FUNC1(HOST_GS_SELECTOR, gs_sel);
		else
			FUNC1(HOST_GS_SELECTOR, 0);
		host->gs_sel = gs_sel;
	}
	if (FUNC0(fs_base != host->fs_base)) {
		FUNC2(HOST_FS_BASE, fs_base);
		host->fs_base = fs_base;
	}
	if (FUNC0(gs_base != host->gs_base)) {
		FUNC2(HOST_GS_BASE, gs_base);
		host->gs_base = gs_base;
	}
}