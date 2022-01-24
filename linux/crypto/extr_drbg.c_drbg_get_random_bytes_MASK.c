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
struct drbg_state {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (struct drbg_state*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned int) ; 

__attribute__((used)) static inline int FUNC2(struct drbg_state *drbg,
					unsigned char *entropy,
					unsigned int entropylen)
{
	int ret;

	do {
		FUNC1(entropy, entropylen);
		ret = FUNC0(drbg, entropy);
		if (ret && ret != -EAGAIN)
			return ret;
	} while (ret);

	return 0;
}