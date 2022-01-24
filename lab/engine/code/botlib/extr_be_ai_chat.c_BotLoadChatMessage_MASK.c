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
struct TYPE_3__ {scalar_t__ type; char* string; int subtype; char* intvalue; } ;
typedef  TYPE_1__ token_t ;
typedef  int /*<<< orphan*/  source_t ;

/* Variables and functions */
 int ESCAPE_CHAR ; 
 int MAX_MESSAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int TT_INTEGER ; 
 scalar_t__ TT_NAME ; 
 scalar_t__ TT_NUMBER ; 
 scalar_t__ TT_STRING ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 size_t FUNC7 (char*) ; 

int FUNC8(source_t *source, char *chatmessagestring)
{
	char *ptr;
	token_t token;

	ptr = chatmessagestring;
	*ptr = 0;
	//
	while(1)
	{
		if (!FUNC1(source, &token)) return qfalse;
		//fixed string
		if (token.type == TT_STRING)
		{
			FUNC4(token.string);
			if (FUNC7(ptr) + FUNC7(token.string) + 1 > MAX_MESSAGE_SIZE)
			{
				FUNC3(source, "chat message too long");
				return qfalse;
			} //end if
			FUNC6(ptr, token.string);
		} //end else if
		//variable string
		else if (token.type == TT_NUMBER && (token.subtype & TT_INTEGER))
		{
			if (FUNC7(ptr) + 7 > MAX_MESSAGE_SIZE)
			{
				FUNC3(source, "chat message too long");
				return qfalse;
			} //end if
			FUNC5(&ptr[FUNC7(ptr)], "%cv%ld%c", ESCAPE_CHAR, token.intvalue, ESCAPE_CHAR);
		} //end if
		//random string
		else if (token.type == TT_NAME)
		{
			if (FUNC7(ptr) + 7 > MAX_MESSAGE_SIZE)
			{
				FUNC3(source, "chat message too long");
				return qfalse;
			} //end if
			FUNC5(&ptr[FUNC7(ptr)], "%cr%s%c", ESCAPE_CHAR, token.string, ESCAPE_CHAR);
		} //end else if
		else
		{
			FUNC3(source, "unknown message component %s", token.string);
			return qfalse;
		} //end else
		if (FUNC0(source, ";")) break;
		if (!FUNC2(source, ",")) return qfalse;
	} //end while
	//
	return qtrue;
}