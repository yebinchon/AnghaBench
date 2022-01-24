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
typedef  int /*<<< orphan*/  u64 ;
struct hwrng {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  H_RANDOM ; 
 int H_SUCCESS ; 
 int PLPAR_HCALL_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct hwrng *rng, void *data, size_t max, bool wait)
{
	u64 buffer[PLPAR_HCALL_BUFSIZE];
	int rc;

	rc = FUNC1(H_RANDOM, (unsigned long *)buffer);
	if (rc != H_SUCCESS) {
		FUNC2("H_RANDOM call failed %d\n", rc);
		return -EIO;
	}
	FUNC0(data, buffer, 8);

	/* The hypervisor interface returns 64 bits */
	return 8;
}