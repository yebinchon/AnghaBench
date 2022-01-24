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
typedef  scalar_t__ qboolean ;
struct TYPE_2__ {void* cursor; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* completionField ; 
 int /*<<< orphan*/ * completionString ; 
 int matchCount ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  shortestMatch ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static qboolean FUNC3( qboolean whitespace )
{
	int completionOffset;

	if( matchCount == 0 )
		return qtrue;

	completionOffset = FUNC2( completionField->buffer ) - FUNC2( completionString );

	FUNC1( &completionField->buffer[ completionOffset ], shortestMatch,
		sizeof( completionField->buffer ) - completionOffset );

	completionField->cursor = FUNC2( completionField->buffer );

	if( matchCount == 1 && whitespace )
	{
		FUNC0( completionField->buffer, sizeof( completionField->buffer ), " " );
		completionField->cursor++;
		return qtrue;
	}

	return qfalse;
}