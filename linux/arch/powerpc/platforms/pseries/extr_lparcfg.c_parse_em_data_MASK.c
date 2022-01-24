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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FEATURE_LPAR ; 
 int /*<<< orphan*/  H_GET_EM_PARMS ; 
 scalar_t__ H_SUCCESS ; 
 int PLPAR_HCALL_BUFSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct seq_file *m)
{
	unsigned long retbuf[PLPAR_HCALL_BUFSIZE];

	if (FUNC0(FW_FEATURE_LPAR) &&
	    FUNC1(H_GET_EM_PARMS, retbuf) == H_SUCCESS)
		FUNC2(m, "power_mode_data=%016lx\n", retbuf[0]);
}