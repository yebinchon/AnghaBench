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
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct shash_desc* FUNC0 (struct ahash_request*) ; 
 struct crypto_shash** FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 int FUNC3 (struct shash_desc*,void const*) ; 

__attribute__((used)) static int FUNC4(struct ahash_request *req, const void *in)
{
	struct crypto_shash **ctx = FUNC1(FUNC2(req));
	struct shash_desc *desc = FUNC0(req);

	desc->tfm = *ctx;

	return FUNC3(desc, in);
}