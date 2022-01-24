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
struct crypto_ahash {int dummy; } ;
struct ahash_request {scalar_t__ result; } ;

/* Variables and functions */
 int FUNC0 (struct ahash_request*,int (*) (struct ahash_request*)) ; 
 unsigned long FUNC1 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC2 (struct ahash_request*) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req,
			   int (*op)(struct ahash_request *))
{
	struct crypto_ahash *tfm = FUNC2(req);
	unsigned long alignmask = FUNC1(tfm);

	if ((unsigned long)req->result & alignmask)
		return FUNC0(req, op);

	return op(req);
}