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
struct scatterlist {unsigned int offset; int /*<<< orphan*/  length; } ;
struct ahash_request {unsigned int nbytes; int /*<<< orphan*/  result; struct scatterlist* src; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int FUNC0 (struct shash_desc*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct shash_desc*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*) ; 
 int FUNC6 (struct ahash_request*,struct shash_desc*) ; 

int FUNC7(struct ahash_request *req, struct shash_desc *desc)
{
	unsigned int nbytes = req->nbytes;
	struct scatterlist *sg;
	unsigned int offset;
	int err;

	if (nbytes &&
	    (sg = req->src, offset = sg->offset,
	     nbytes <= FUNC4(sg->length, ((unsigned int)(PAGE_SIZE)) - offset))) {
		void *data;

		data = FUNC2(FUNC5(sg));
		err = FUNC0(desc, data + offset, nbytes,
					  req->result);
		FUNC3(data);
	} else
		err = FUNC1(desc) ?:
		      FUNC6(req, desc);

	return err;
}