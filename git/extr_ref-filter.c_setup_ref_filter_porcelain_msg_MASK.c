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
struct TYPE_2__ {void* ahead_behind; void* behind; void* ahead; void* gone; } ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 TYPE_1__ msgs ; 

void FUNC1(void)
{
	msgs.gone = FUNC0("gone");
	msgs.ahead = FUNC0("ahead %d");
	msgs.behind = FUNC0("behind %d");
	msgs.ahead_behind = FUNC0("ahead %d, behind %d");
}