#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lines; } ;
typedef  TYPE_1__ patch_image ;
struct TYPE_7__ {scalar_t__ content_len; int /*<<< orphan*/  content; } ;
typedef  TYPE_2__ git_diff_line ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool FUNC3(
	patch_image *image,
	patch_image *preimage,
	size_t linenum)
{
	bool match = 0;
	size_t i;

	/* Ensure this hunk is within the image boundaries. */
	if (FUNC1(&preimage->lines) + linenum >
		FUNC1(&image->lines))
		return 0;

	match = 1;

	/* Check exact match. */
	for (i = 0; i < FUNC1(&preimage->lines); i++) {
		git_diff_line *preimage_line = FUNC0(&preimage->lines, i);
		git_diff_line *image_line = FUNC0(&image->lines, linenum + i);

		if (preimage_line->content_len != image_line->content_len ||
			FUNC2(preimage_line->content, image_line->content, image_line->content_len) != 0) {
			match = 0;
			break;
		}
	}

	return match;
}