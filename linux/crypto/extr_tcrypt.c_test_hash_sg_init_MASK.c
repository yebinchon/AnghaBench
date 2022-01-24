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
 int /*<<< orphan*/  PAGE_SIZE ; 
 int TVMEMSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tvmem ; 

__attribute__((used)) static void FUNC3(struct scatterlist *sg)
{
	int i;

	FUNC1(sg, TVMEMSIZE);
	for (i = 0; i < TVMEMSIZE; i++) {
		FUNC2(sg + i, tvmem[i], PAGE_SIZE);
		FUNC0(tvmem[i], 0xff, PAGE_SIZE);
	}
}