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
struct bio_vec {int dummy; } ;
struct bio {unsigned short bi_max_vecs; struct bio_vec* bi_io_vec; int /*<<< orphan*/  __bi_cnt; int /*<<< orphan*/  __bi_remaining; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct bio *bio, struct bio_vec *table,
	      unsigned short max_vecs)
{
	FUNC1(bio, 0, sizeof(*bio));
	FUNC0(&bio->__bi_remaining, 1);
	FUNC0(&bio->__bi_cnt, 1);

	bio->bi_io_vec = table;
	bio->bi_max_vecs = max_vecs;
}