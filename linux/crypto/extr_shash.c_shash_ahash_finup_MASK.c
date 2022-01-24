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
struct crypto_hash_walk {int /*<<< orphan*/  data; } ;
struct ahash_request {int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int FUNC0 (struct crypto_hash_walk*,int) ; 
 int FUNC1 (struct ahash_request*,struct crypto_hash_walk*) ; 
 scalar_t__ FUNC2 (struct crypto_hash_walk*) ; 
 int FUNC3 (struct shash_desc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct shash_desc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct shash_desc*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct ahash_request *req, struct shash_desc *desc)
{
	struct crypto_hash_walk walk;
	int nbytes;

	nbytes = FUNC1(req, &walk);
	if (!nbytes)
		return FUNC3(desc, req->result);

	do {
		nbytes = FUNC2(&walk) ?
			 FUNC4(desc, walk.data, nbytes,
					    req->result) :
			 FUNC5(desc, walk.data, nbytes);
		nbytes = FUNC0(&walk, nbytes);
	} while (nbytes > 0);

	return nbytes;
}