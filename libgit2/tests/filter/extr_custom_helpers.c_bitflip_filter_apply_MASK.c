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
typedef  int /*<<< orphan*/  git_filter_source ;
typedef  void* git_filter ;
struct TYPE_5__ {size_t size; scalar_t__ ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**) ; 
 unsigned char FUNC1 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 

int FUNC7(
	git_filter     *self,
	void          **payload,
	git_buf        *to,
	const git_buf  *from,
	const git_filter_source *source)
{
	const unsigned char *src = (const unsigned char *)from->ptr;
	unsigned char *dst;
	size_t i;

	FUNC0(self); FUNC0(payload);

	/* verify that attribute path match worked as expected */
	FUNC2(
		0, FUNC4("hero", FUNC6(source), 4));

	if (!from->size)
		return 0;

	FUNC3(FUNC5(to, from->size));

	dst = (unsigned char *)to->ptr;

	for (i = 0; i < from->size; i++)
		dst[i] = FUNC1(src[i]);

	to->size = from->size;

	return 0;
}