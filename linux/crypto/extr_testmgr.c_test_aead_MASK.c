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
struct cipher_test_sglists {int dummy; } ;
struct aead_test_suite {unsigned int count; int /*<<< orphan*/ * vecs; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/ *,unsigned int,struct aead_request*,struct cipher_test_sglists*) ; 

__attribute__((used)) static int FUNC2(const char *driver, int enc,
		     const struct aead_test_suite *suite,
		     struct aead_request *req,
		     struct cipher_test_sglists *tsgls)
{
	unsigned int i;
	int err;

	for (i = 0; i < suite->count; i++) {
		err = FUNC1(driver, enc, &suite->vecs[i], i, req,
				    tsgls);
		if (err)
			return err;
		FUNC0();
	}
	return 0;
}