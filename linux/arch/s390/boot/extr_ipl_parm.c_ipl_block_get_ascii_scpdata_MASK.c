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
struct TYPE_2__ {int /*<<< orphan*/ * scp_data; int /*<<< orphan*/  scp_data_len; } ;
struct ipl_parameter_block {TYPE_1__ fcp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC6(char *dest, size_t size,
					  const struct ipl_parameter_block *ipb)
{
	size_t count;
	size_t i;
	int has_lowercase;

	count = FUNC3(size - 1, FUNC4(ipb->fcp.scp_data,
					     ipb->fcp.scp_data_len));
	if (!count)
		goto out;

	has_lowercase = 0;
	for (i = 0; i < count; i++) {
		if (!FUNC0(ipb->fcp.scp_data[i])) {
			count = 0;
			goto out;
		}
		if (!has_lowercase && FUNC1(ipb->fcp.scp_data[i]))
			has_lowercase = 1;
	}

	if (has_lowercase)
		FUNC2(dest, ipb->fcp.scp_data, count);
	else
		for (i = 0; i < count; i++)
			dest[i] = FUNC5(ipb->fcp.scp_data[i]);
out:
	dest[count] = '\0';
	return count;
}