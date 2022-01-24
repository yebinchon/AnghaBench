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
struct ssl_context {int /*<<< orphan*/  pkey; } ;
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  RSA_F4 ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct ssl_context *ssl)
{
	int err = 1;
	BIGNUM *bn;
	RSA *key;

	ssl->pkey = FUNC4();

	bn = FUNC1();
	if (FUNC2(bn, RSA_F4) != 1)
		goto err;
	/** Will be freed with ctx.pkey */
	key = FUNC6();
	if (FUNC5(key, 2048, bn, NULL) != 1)
		goto err;
	if (FUNC3(ssl->pkey, key) != 1)
		goto err;
	err = 0;
err:
	FUNC0(bn);
	return err;
}