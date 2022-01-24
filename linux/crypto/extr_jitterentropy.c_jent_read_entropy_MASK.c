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
struct rand_data {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int DATA_SIZE_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct rand_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct rand_data*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ *,unsigned int) ; 

int FUNC3(struct rand_data *ec, unsigned char *data,
		      unsigned int len)
{
	unsigned char *p = data;

	if (!ec)
		return -1;

	while (0 < len) {
		unsigned int tocopy;

		FUNC1(ec);
		FUNC0(ec);
		if ((DATA_SIZE_BITS / 8) < len)
			tocopy = (DATA_SIZE_BITS / 8);
		else
			tocopy = len;
		FUNC2(p, &ec->data, tocopy);

		len -= tocopy;
		p += tocopy;
	}

	return 0;
}