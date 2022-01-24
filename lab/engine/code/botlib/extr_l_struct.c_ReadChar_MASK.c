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
struct TYPE_3__ {scalar_t__ type; char* string; } ;
typedef  TYPE_1__ token_t ;
typedef  int /*<<< orphan*/  source_t ;
typedef  int qboolean ;
typedef  int /*<<< orphan*/  fielddef_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ TT_LITERAL ; 

qboolean FUNC4(source_t *source, fielddef_t *fd, void *p)
{
	token_t token;

	if (!FUNC0(source, &token)) return 0;

	//take literals into account
	if (token.type == TT_LITERAL)
	{
		FUNC3(token.string);
		*(char *) p = token.string[0];
	} //end if
	else
	{
		FUNC1(source);
		if (!FUNC2(source, fd, p)) return 0;
	} //end if
	return 1;
}