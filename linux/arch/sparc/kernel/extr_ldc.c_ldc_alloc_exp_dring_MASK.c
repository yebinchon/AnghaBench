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
struct ldc_trans_cookie {int dummy; } ;
struct ldc_channel {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ldc_channel*,void*,unsigned int,struct ldc_trans_cookie*,int,unsigned int) ; 

void *FUNC4(struct ldc_channel *lp, unsigned int len,
			  struct ldc_trans_cookie *cookies, int *ncookies,
			  unsigned int map_perm)
{
	void *buf;
	int err;

	if (len & (8UL - 1))
		return FUNC0(-EINVAL);

	buf = FUNC2(len, GFP_ATOMIC);
	if (!buf)
		return FUNC0(-ENOMEM);

	err = FUNC3(lp, buf, len, cookies, *ncookies, map_perm);
	if (err < 0) {
		FUNC1(buf);
		return FUNC0(err);
	}
	*ncookies = err;

	return buf;
}