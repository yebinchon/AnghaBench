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
struct TYPE_5__ {struct TYPE_5__* tag; struct TYPE_5__* name; struct TYPE_5__* path; } ;
typedef  TYPE_1__ git_describe_result ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(git_describe_result *result)
{
	if (result == NULL)
		return;

	if (result->name) {
		FUNC1(result->name->tag);
		FUNC0(result->name->path);
		FUNC0(result->name);
	}

	if (result->tag) {
		FUNC1(result->tag->name->tag);
		FUNC0(result->tag->name->path);
		FUNC0(result->tag->name);
		FUNC0(result->tag);
	}

	FUNC0(result);
}