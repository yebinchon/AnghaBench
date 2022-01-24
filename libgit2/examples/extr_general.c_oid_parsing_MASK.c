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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(git_oid *oid)
{
	char out[GIT_OID_HEXSZ+1];
	char hex[] = "4a202b346bb0fb0db7eff3cffeb3c70babbd2045";

	FUNC2("*Hex to Raw*\n");

	/**
	 * For our first example, we will convert a 40 character hex value to the
	 * 20 byte raw SHA1 value.
	 *
	 * The `git_oid` is the structure that keeps the SHA value. We will use
	 * this throughout the example for storing the value of the current SHA
	 * key we're working with.
	 */
	FUNC1(oid, hex);

	/*
	 * Once we've converted the string into the oid value, we can get the raw
	 * value of the SHA by accessing `oid.id`
	 *
	 * Next we will convert the 20 byte raw SHA1 value to a human readable 40
	 * char hex value.
	 */
	FUNC2("\n*Raw to Hex*\n");
	out[GIT_OID_HEXSZ] = '\0';

	/**
	 * If you have a oid, you can easily get the hex value of the SHA as well.
	 */
	FUNC0(out, oid);

	/**
	 * If you have a oid, you can easily get the hex value of the SHA as well.
	 */
	FUNC0(out, oid);
	FUNC2("SHA hex string: %s\n", out);
}