#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int*) ; 
 int TRAVELFLAG_NOTTEAM1 ; 
 int TRAVELFLAG_NOTTEAM2 ; 

int FUNC1(int ent)
{
	int notteam;

	if (!FUNC0(ent, "bot_notteam", &notteam))
		return 0;
	if (notteam == 1)
		return TRAVELFLAG_NOTTEAM1;
	if (notteam == 2)
		return TRAVELFLAG_NOTTEAM2;
	return 0;
}