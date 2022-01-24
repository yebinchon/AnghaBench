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
struct bio_vec {int /*<<< orphan*/  bv_offset; int /*<<< orphan*/  bv_len; int /*<<< orphan*/  bv_page; } ;

/* Variables and functions */
 struct scatterlist* FUNC0 (struct scatterlist**,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct bio_vec bv,
		struct scatterlist *sglist, struct scatterlist **sg)
{
	*sg = FUNC0(sg, sglist);
	FUNC1(*sg, bv.bv_page, bv.bv_len, bv.bv_offset);
	return 1;
}