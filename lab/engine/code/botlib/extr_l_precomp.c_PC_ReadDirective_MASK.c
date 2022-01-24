#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ linescrossed; scalar_t__ type; int /*<<< orphan*/  string; } ;
typedef  TYPE_1__ token_t ;
typedef  int /*<<< orphan*/  source_t ;
struct TYPE_6__ {int (* func ) (int /*<<< orphan*/ *) ;scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ TT_NAME ; 
 TYPE_2__* directives ; 
 int qfalse ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(source_t *source)
{
	token_t token;
	int i;

	//read the directive name
	if (!FUNC0(source, &token))
	{
		FUNC2(source, "found # without name");
		return qfalse;
	} //end if
	//directive name must be on the same line
	if (token.linescrossed > 0)
	{
		FUNC1(source, &token);
		FUNC2(source, "found # at end of line");
		return qfalse;
	} //end if
	//if if is a name
	if (token.type == TT_NAME)
	{
		//find the precompiler directive
		for (i = 0; directives[i].name; i++)
		{
			if (!FUNC3(directives[i].name, token.string))
			{
				return directives[i].func(source);
			} //end if
		} //end for
	} //end if
	FUNC2(source, "unknown precompiler directive %s", token.string);
	return qfalse;
}