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
typedef  int u32 ;
struct mipc_infohdr {int mem2_boundary; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct mipc_infohdr* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(u32 *mem2_boundary)
{
	struct mipc_infohdr *hdr;
	int error;

	hdr = FUNC1();
	if (!hdr) {
		error = -1;
		goto out;
	}

	if (FUNC0(hdr->mem2_boundary)) {
		FUNC2("mini: invalid mem2_boundary %08X\n",
		       hdr->mem2_boundary);
		error = -EINVAL;
		goto out;
	}
	*mem2_boundary = hdr->mem2_boundary;
	error = 0;
out:
	return error;

}