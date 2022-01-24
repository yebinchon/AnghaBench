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
typedef  int uint32_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCICONFAREG ; 
 int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(unsigned char number,
						unsigned int devfn, int where)
{
	if (number == 0) {
		/*
		 * Type 0 configuration
		 */
		if (FUNC1(devfn) < 11 || where > 0xff)
			return -EINVAL;

		FUNC2((1U << FUNC1(devfn)) | (FUNC0(devfn) << 8) |
		       (where & 0xfc), PCICONFAREG);
	} else {
		/*
		 * Type 1 configuration
		 */
		if (where > 0xff)
			return -EINVAL;

		FUNC2(((uint32_t)number << 16) | ((devfn & 0xff) << 8) |
		       (where & 0xfc) | 1U, PCICONFAREG);
	}

	return 0;
}