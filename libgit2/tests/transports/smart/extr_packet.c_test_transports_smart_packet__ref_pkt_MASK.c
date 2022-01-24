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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*) ; 

void FUNC2(void)
{
	FUNC0("002C0000000000000000000000000000000000000000");
	FUNC0("002D0000000000000000000000000000000000000000\n");
	FUNC0("00300000000000000000000000000000000000000000HEAD");
	FUNC0("004800000000x0000000000000000000000000000000 refs/heads/master\0multi_ack");
	FUNC1(
		"003F0000000000000000000000000000000000000000 refs/heads/master\0",
		"0000000000000000000000000000000000000000", "refs/heads/master", "");
	FUNC1(
		"00480000000000000000000000000000000000000000 refs/heads/master\0multi_ack",
		"0000000000000000000000000000000000000000", "refs/heads/master", "multi_ack");
	FUNC1(
		"00460000000000000000000000000000000000000000 refs/heads/master\0one two",
		"0000000000000000000000000000000000000000", "refs/heads/master", "one two");
	FUNC1(
		"00310000000000000000000000000000000000000000 HEAD",
		"0000000000000000000000000000000000000000", "HEAD", NULL);
	FUNC0("0031000000000000000000000000000000000000000 HEAD");
	FUNC1(
		"00360000000000000000000000000000000000000000 HEAD HEAD",
		"0000000000000000000000000000000000000000", "HEAD HEAD", NULL);
}