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
struct TYPE_3__ {int widthInChars; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int KEYCATCH_MESSAGE ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ chatField ; 
 int chat_playerNum ; 
 int /*<<< orphan*/  chat_team ; 
 int /*<<< orphan*/  qfalse ; 

void FUNC3 (void) {
	chat_playerNum = -1;
	chat_team = qfalse;
	FUNC0( &chatField );
	chatField.widthInChars = 30;

	FUNC2( FUNC1( ) ^ KEYCATCH_MESSAGE );
}