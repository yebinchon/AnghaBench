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
struct acpi_hest_generic_status {scalar_t__ error_severity; } ;
typedef  int /*<<< orphan*/  pfx_seq ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 scalar_t__ CPER_SEV_CORRECTED ; 
 char* KERN_ERR ; 
 char* KERN_INFO ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct acpi_hest_generic_status*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,unsigned int) ; 

__attribute__((used)) static void FUNC4(const char *pfx,
			       struct acpi_hest_generic_status *estatus, int cpu)
{
	static atomic_t seqno;
	unsigned int curr_seqno;
	char pfx_seq[64];

	if (!pfx) {
		if (estatus->error_severity <= CPER_SEV_CORRECTED)
			pfx = KERN_INFO;
		else
			pfx = KERN_ERR;
	}
	curr_seqno = FUNC0(&seqno);
	FUNC3(pfx_seq, sizeof(pfx_seq), "%s{%u}", pfx, curr_seqno);
	FUNC2("%s""Hardware error detected on CPU%d\n", pfx_seq, cpu);
	FUNC1(pfx_seq, estatus);
}