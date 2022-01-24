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
struct drbg_string {int dummy; } ;
struct drbg_state {int /*<<< orphan*/  drbg_mutex; } ;

/* Variables and functions */
 int FUNC0 (struct drbg_state*,unsigned char*,unsigned int,struct drbg_string*) ; 
 unsigned int FUNC1 (struct drbg_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct drbg_state *drbg,
			      unsigned char *buf, unsigned int buflen,
			      struct drbg_string *addtl)
{
	unsigned int len = 0;
	unsigned int slice = 0;
	do {
		int err = 0;
		unsigned int chunk = 0;
		slice = ((buflen - len) / FUNC1(drbg));
		chunk = slice ? FUNC1(drbg) : (buflen - len);
		FUNC2(&drbg->drbg_mutex);
		err = FUNC0(drbg, buf + len, chunk, addtl);
		FUNC3(&drbg->drbg_mutex);
		if (0 > err)
			return err;
		len += chunk;
	} while (slice > 0 && (len < buflen));
	return 0;
}