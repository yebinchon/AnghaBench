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
struct hd_struct {int /*<<< orphan*/  partno; scalar_t__ policy; } ;
struct bio {int /*<<< orphan*/  bi_opf; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,char*) ; 
 int FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int const) ; 

__attribute__((used)) static inline bool FUNC6(struct bio *bio, struct hd_struct *part)
{
	const int op = FUNC2(bio);

	if (part->policy && FUNC5(op)) {
		char b[BDEVNAME_SIZE];

		if (FUNC4(bio->bi_opf) && !FUNC3(bio))
			return false;

		FUNC0(1,
		       "generic_make_request: Trying to write "
			"to read-only block-device %s (partno %d)\n",
			FUNC1(bio, b), part->partno);
		/* Older lvm-tools actually trigger this */
		return false;
	}

	return false;
}