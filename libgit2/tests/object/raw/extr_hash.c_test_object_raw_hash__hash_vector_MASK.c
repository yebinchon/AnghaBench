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
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_3__ {int len; void* data; } ;
typedef  TYPE_1__ git_buf_vec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hello_id ; 
 void* hello_text ; 
 int FUNC5 (void*) ; 

void FUNC6(void)
{
	git_oid id1, id2;
	git_buf_vec vec[2];

	FUNC1(FUNC4(&id1, hello_id));

	vec[0].data = hello_text;
	vec[0].len  = 4;
	vec[1].data = hello_text+4;
	vec[1].len  = FUNC5(hello_text)-4;

	FUNC2(&id2, vec, 2);

	FUNC0(FUNC3(&id1, &id2) == 0);
}