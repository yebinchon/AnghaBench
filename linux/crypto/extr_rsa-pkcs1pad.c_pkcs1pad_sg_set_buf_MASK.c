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
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*,int,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,void*,size_t) ; 

__attribute__((used)) static void FUNC3(struct scatterlist *sg, void *buf, size_t len,
		struct scatterlist *next)
{
	int nsegs = next ? 2 : 1;

	FUNC1(sg, nsegs);
	FUNC2(sg, buf, len);

	if (next)
		FUNC0(sg, nsegs, next);
}