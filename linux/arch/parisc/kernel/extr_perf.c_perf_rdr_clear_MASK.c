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
typedef  int /*<<< orphan*/  uint32_t ;
struct rdr_tbl_ent {scalar_t__ width; int /*<<< orphan*/  num_words; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ ONYX_INTF ; 
 scalar_t__ perf_processor_interface ; 
 struct rdr_tbl_ent* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC3(uint32_t	rdr_num)
{
	const struct rdr_tbl_ent *tentry;
	int32_t		i;

	tentry = FUNC0(rdr_num);

	if (tentry->width == 0) {
		return -1;
	}

	i = tentry->num_words;
	while (i--) {
		if (perf_processor_interface == ONYX_INTF) {
			FUNC1(rdr_num, 0UL);
		} else {
			FUNC2(rdr_num, 0UL);
		}
	}

	return 0;
}