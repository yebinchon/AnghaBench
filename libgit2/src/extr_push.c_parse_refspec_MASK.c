#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* src; int /*<<< orphan*/  dst; } ;
struct TYPE_7__ {TYPE_3__ refspec; } ;
typedef  TYPE_1__ push_spec ;
typedef  int /*<<< orphan*/  git_push ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,char const*,int) ; 

__attribute__((used)) static int FUNC7(git_push *push, push_spec **spec, const char *str)
{
	push_spec *s;

	*spec = NULL;

	s = FUNC4(1, sizeof(*s));
	FUNC0(s);

	if (FUNC6(&s->refspec, str, false) < 0) {
		FUNC5(GIT_ERROR_INVALID, "invalid refspec %s", str);
		goto on_error;
	}

	if (s->refspec.src && s->refspec.src[0] != '\0' &&
	    FUNC1(push, s->refspec.src) < 0) {
		goto on_error;
	}

	if (FUNC2(s->refspec.dst) < 0)
		goto on_error;

	*spec = s;
	return 0;

on_error:
	FUNC3(s);
	return -1;
}