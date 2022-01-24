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
struct crypto_template {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct crypto_template*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_template*) ; 

int FUNC2(struct crypto_template *tmpls, int count)
{
	int i, err;

	for (i = 0; i < count; i++) {
		err = FUNC0(&tmpls[i]);
		if (err)
			goto out;
	}
	return 0;

out:
	for (--i; i >= 0; --i)
		FUNC1(&tmpls[i]);
	return err;
}