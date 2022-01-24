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
typedef  int /*<<< orphan*/  resource_size_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* pcibios_default_alignment ) () ;} ;

/* Variables and functions */
 TYPE_1__ ppc_md ; 
 int /*<<< orphan*/  FUNC0 () ; 

resource_size_t FUNC1(void)
{
	if (ppc_md.pcibios_default_alignment)
		return ppc_md.pcibios_default_alignment();

	return 0;
}