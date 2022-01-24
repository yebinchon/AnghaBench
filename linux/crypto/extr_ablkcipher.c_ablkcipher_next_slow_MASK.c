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
typedef  int /*<<< orphan*/  u8 ;
struct ablkcipher_walk {unsigned int nbytes; int /*<<< orphan*/  flags; int /*<<< orphan*/  in; } ;
struct ablkcipher_request {int dummy; } ;
struct ablkcipher_buffer {unsigned int len; void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABLKCIPHER_WALK_SLOW ; 
 unsigned int FUNC0 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 void* FUNC1 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ablkcipher_walk*,struct ablkcipher_buffer*) ; 
 int FUNC3 (struct ablkcipher_request*,struct ablkcipher_walk*,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 struct ablkcipher_buffer* FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC7(struct ablkcipher_request *req,
				       struct ablkcipher_walk *walk,
				       unsigned int bsize,
				       unsigned int alignmask,
				       void **src_p, void **dst_p)
{
	unsigned aligned_bsize = FUNC0(bsize, alignmask + 1);
	struct ablkcipher_buffer *p;
	void *src, *dst, *base;
	unsigned int n;

	n = FUNC0(sizeof(struct ablkcipher_buffer), alignmask + 1);
	n += (aligned_bsize * 3 - (alignmask + 1) +
	      (alignmask & ~(FUNC4() - 1)));

	p = FUNC5(n, GFP_ATOMIC);
	if (!p)
		return FUNC3(req, walk, -ENOMEM);

	base = p + 1;

	dst = (u8 *)FUNC0((unsigned long)base, alignmask + 1);
	src = dst = FUNC1(dst, bsize);

	p->len = bsize;
	p->data = dst;

	FUNC6(src, &walk->in, bsize, 0);

	FUNC2(walk, p);

	walk->nbytes = bsize;
	walk->flags |= ABLKCIPHER_WALK_SLOW;

	*src_p = src;
	*dst_p = dst;

	return 0;
}