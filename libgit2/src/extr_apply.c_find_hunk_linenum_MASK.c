#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lines; } ;
typedef  TYPE_1__ patch_image ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*,size_t) ; 

__attribute__((used)) static bool FUNC2(
	size_t *out,
	patch_image *image,
	patch_image *preimage,
	size_t linenum)
{
	size_t max = FUNC0(&image->lines);
	bool match;

	if (linenum > max)
		linenum = max;

	match = FUNC1(image, preimage, linenum);

	*out = linenum;
	return match;
}