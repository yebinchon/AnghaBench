#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * contents; } ;
struct TYPE_9__ {TYPE_5__ lines; } ;
typedef  TYPE_1__ patch_image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,size_t) ; 
 int FUNC2 (TYPE_5__*,size_t,size_t) ; 
 size_t FUNC3 (TYPE_5__*) ; 
 int FUNC4 (TYPE_5__*,size_t,size_t) ; 

__attribute__((used)) static int FUNC5(
	patch_image *image,
	size_t linenum,
	patch_image *preimage,
	patch_image *postimage)
{
	size_t postlen = FUNC3(&postimage->lines);
	size_t prelen = FUNC3(&preimage->lines);
	size_t i;
	int error = 0;

	if (postlen > prelen)
		error = FUNC2(
			&image->lines, linenum, (postlen - prelen));
	else if (prelen > postlen)
		error = FUNC4(
			&image->lines, linenum, (prelen - postlen));

	if (error) {
		FUNC0();
		return -1;
	}

	for (i = 0; i < FUNC3(&postimage->lines); i++) {
		image->lines.contents[linenum + i] =
			FUNC1(&postimage->lines, i);
	}

	return 0;
}