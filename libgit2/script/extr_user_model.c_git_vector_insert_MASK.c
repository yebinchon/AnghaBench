#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t length; void** contents; } ;
typedef  TYPE_1__ git_vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void** FUNC1 (void**,size_t) ; 

int FUNC2(git_vector *v, void *element)
{
	if (!v)
		FUNC0();

	v->contents = FUNC1(v->contents, ++v->length);
	if (!v->contents)
		FUNC0();
	v->contents[v->length] = element;

	return 0;
}