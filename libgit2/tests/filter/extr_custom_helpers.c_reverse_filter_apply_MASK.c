#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* git_filter_source ;
typedef  void* const git_filter ;
struct TYPE_5__ {int size; scalar_t__ ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void* const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (void* const*) ; 

int FUNC6(
	git_filter     *self,
	void          **payload,
	git_buf        *to,
	const git_buf  *from,
	const git_filter_source *source)
{
	const unsigned char *src = (const unsigned char *)from->ptr;
	const unsigned char *end = src + from->size;
	unsigned char *dst;

	FUNC0(self); FUNC0(payload); FUNC0(source);

	/* verify that attribute path match worked as expected */
	FUNC1(
		0, FUNC3("hero", FUNC5(source), 4));

	if (!from->size)
		return 0;

	FUNC2(FUNC4(to, from->size));

	dst = (unsigned char *)to->ptr + from->size - 1;

	while (src < end)
		*dst-- = *src++;

	to->size = from->size;

	return 0;
}