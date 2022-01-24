#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_2__ {int /*<<< orphan*/ * buffer; void* cursor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* completionField ; 
 int /*<<< orphan*/ * completionString ; 
 int matchCount ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  shortestMatch ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static qboolean FUNC4( void )
{
	int completionOffset;

	if( matchCount == 0 )
		return qtrue;

	completionOffset = FUNC3( completionField->buffer ) - FUNC3( completionString );

	FUNC2( &completionField->buffer[ completionOffset ], shortestMatch,
		sizeof( completionField->buffer ) - completionOffset );

	completionField->cursor = FUNC3( completionField->buffer );

	if( matchCount == 1 )
	{
		FUNC1( completionField->buffer, sizeof( completionField->buffer ), " " );
		completionField->cursor++;
		return qtrue;
	}

	FUNC0( "]%s\n", completionField->buffer );

	return qfalse;
}