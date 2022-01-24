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
struct crypto_wait {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,struct crypto_wait*) ; 

__attribute__((used)) static int FUNC3(int (*op)(struct ahash_request *req),
		       struct ahash_request *req,
		       struct crypto_wait *wait, bool nosimd)
{
	int err;

	if (nosimd)
		FUNC0();

	err = op(req);

	if (nosimd)
		FUNC1();

	return FUNC2(err, wait);
}