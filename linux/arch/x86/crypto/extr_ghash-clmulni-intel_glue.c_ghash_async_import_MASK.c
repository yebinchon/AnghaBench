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
struct shash_desc {int dummy; } ;
struct ghash_desc_ctx {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct ahash_request* FUNC0 (struct ahash_request*) ; 
 struct shash_desc* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct ghash_desc_ctx*,void const*,int) ; 
 struct ghash_desc_ctx* FUNC4 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC5(struct ahash_request *req, const void *in)
{
	struct ahash_request *cryptd_req = FUNC0(req);
	struct shash_desc *desc = FUNC1(cryptd_req);
	struct ghash_desc_ctx *dctx = FUNC4(desc);

	FUNC2(req);
	FUNC3(dctx, in, sizeof(*dctx));
	return 0;

}