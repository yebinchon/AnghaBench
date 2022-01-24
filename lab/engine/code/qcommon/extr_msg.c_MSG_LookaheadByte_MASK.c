#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int readcount; int bit; } ;
typedef  TYPE_1__ msg_t ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int FUNC2 (TYPE_1__*) ; 

int FUNC3( msg_t *msg ) {
	const int bloc = FUNC0();
	const int readcount = msg->readcount;
	const int bit = msg->bit;
	int c = FUNC2(msg);
	FUNC1(bloc);
	msg->readcount = readcount;
	msg->bit = bit;
	return c;
}