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
struct crypto_ahash {int (* update ) (struct ahash_request*) ;} ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  ahash_def_finup_done1 ; 
 int FUNC0 (struct ahash_request*,int) ; 
 int FUNC1 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 struct crypto_ahash* FUNC2 (struct ahash_request*) ; 
 int FUNC3 (struct ahash_request*) ; 

__attribute__((used)) static int FUNC4(struct ahash_request *req)
{
	struct crypto_ahash *tfm = FUNC2(req);
	int err;

	err = FUNC1(req, ahash_def_finup_done1);
	if (err)
		return err;

	err = tfm->update(req);
	if (err == -EINPROGRESS || err == -EBUSY)
		return err;

	return FUNC0(req, err);
}