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
 unsigned int PAGE_SIZE ; 
 int XBUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,char*,int) ; 

__attribute__((used)) static void FUNC2(struct scatterlist *sg, char *xbuf[XBUFSIZE],
			 unsigned int buflen, const void *assoc,
			 unsigned int aad_size)
{
	int np = (buflen + PAGE_SIZE - 1)/PAGE_SIZE;
	int k, rem;

	if (np > XBUFSIZE) {
		rem = PAGE_SIZE;
		np = XBUFSIZE;
	} else {
		rem = buflen % PAGE_SIZE;
	}

	FUNC0(sg, np + 1);

	FUNC1(&sg[0], assoc, aad_size);

	if (rem)
		np--;
	for (k = 0; k < np; k++)
		FUNC1(&sg[k + 1], xbuf[k], PAGE_SIZE);

	if (rem)
		FUNC1(&sg[k + 1], xbuf[k], rem);
}