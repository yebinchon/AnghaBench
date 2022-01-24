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
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(void)
{
	/* TODO: same as for ok pkt */
	FUNC1("0007ng\n");
	FUNC1("0008ng \n");
	FUNC1("000Bng ref\n");
	FUNC1("000Bng ref\n");
	/* TODO: is this a valid packet line? Probably not. */
	FUNC0("000Ang  x\n", "", "x");
	FUNC0("000Fng ref msg\n", "ref", "msg");
	FUNC0("000Fng ref msg\n", "ref", "msg");
}