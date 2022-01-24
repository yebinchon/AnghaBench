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
struct scatterlist {unsigned int length; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int) ; 
 struct scatterlist* FUNC2 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,int /*<<< orphan*/ ,unsigned int,scalar_t__) ; 

struct scatterlist *FUNC5(struct scatterlist dst[2],
				     struct scatterlist *src,
				     unsigned int len)
{
	for (;;) {
		if (!len)
			return src;

		if (src->length > len)
			break;

		len -= src->length;
		src = FUNC2(src);
	}

	FUNC1(dst, 2);
	FUNC4(dst, FUNC3(src), src->length - len, src->offset + len);
	FUNC0(dst, FUNC2(src), 2);

	return dst;
}