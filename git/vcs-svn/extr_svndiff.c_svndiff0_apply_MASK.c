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
struct sliding_view {int dummy; } ;
struct line_buffer {int dummy; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct line_buffer*,scalar_t__*,struct sliding_view*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct sliding_view*,scalar_t__,size_t) ; 
 scalar_t__ FUNC3 (struct line_buffer*,size_t*,scalar_t__*) ; 
 scalar_t__ FUNC4 (struct line_buffer*,scalar_t__*) ; 
 scalar_t__ FUNC5 (struct line_buffer*,scalar_t__*,scalar_t__*) ; 

int FUNC6(struct line_buffer *delta, off_t delta_len,
			struct sliding_view *preimage, FILE *postimage)
{
	FUNC1(delta && preimage && postimage && delta_len >= 0);

	if (FUNC4(delta, &delta_len))
		return -1;
	while (delta_len) {	/* For each window: */
		off_t pre_off = -1;
		size_t pre_len;

		if (FUNC5(delta, &pre_off, &delta_len) ||
		    FUNC3(delta, &pre_len, &delta_len) ||
		    FUNC2(preimage, pre_off, pre_len) ||
		    FUNC0(delta, &delta_len, preimage, postimage))
			return -1;
	}
	return 0;
}