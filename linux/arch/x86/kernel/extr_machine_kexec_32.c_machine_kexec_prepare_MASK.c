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
struct kimage {int /*<<< orphan*/  control_code_page; } ;

/* Variables and functions */
 int FUNC0 (struct kimage*) ; 
 int /*<<< orphan*/  FUNC1 (struct kimage*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int) ; 

int FUNC4(struct kimage *image)
{
	int error;

	FUNC3((unsigned long)FUNC2(image->control_code_page), 1);
	error = FUNC0(image);
	if (error)
		return error;
	FUNC1(image);
	return 0;
}