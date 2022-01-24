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
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct ahash_request* FUNC0 (struct ahash_request*) ; 
 struct shash_desc* FUNC1 (struct ahash_request*) ; 
 int FUNC2 (struct shash_desc*,void*) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req, void *out)
{
	struct ahash_request *cryptd_req = FUNC0(req);
	struct shash_desc *desc = FUNC1(cryptd_req);

	return FUNC2(desc, out);
}