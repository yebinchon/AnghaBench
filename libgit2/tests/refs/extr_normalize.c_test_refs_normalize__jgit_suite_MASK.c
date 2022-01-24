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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL ; 
 int /*<<< orphan*/  GIT_REFERENCE_FORMAT_NORMAL ; 
 int GIT_REFNAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char) ; 

void FUNC3(void)
{
	/* tests borrowed from JGit */

/* EmptyString */
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "/");

/* MustHaveTwoComponents */
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "master");
	FUNC1(
		GIT_REFERENCE_FORMAT_NORMAL, "heads/master", "heads/master");

/* ValidHead */
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master", "refs/heads/master");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/pu", "refs/heads/pu");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/z", "refs/heads/z");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/FoO", "refs/heads/FoO");

/* ValidTag */
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/tags/v1.0", "refs/tags/v1.0");

/* NoLockSuffix */
	FUNC0(GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master.lock");

/* NoDirectorySuffix */
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master/");

/* NoSpace */
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/i haz space");

/* NoAsciiControlCharacters */
	{
		char c;
		char buffer[GIT_REFNAME_MAX];
		for (c = '\1'; c < ' '; c++) {
			FUNC2(buffer, sizeof(buffer), "refs/heads/mast%cer", c);
			FUNC0(GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, buffer);
		}
	}

/* NoBareDot */
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/.");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/..");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/./master");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/../master");

/* NoLeadingOrTrailingDot */
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, ".");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/.bar");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/..bar");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/bar.");

/* ContainsDot */
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/m.a.s.t.e.r", "refs/heads/m.a.s.t.e.r");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master..pu");

/* NoMagicRefCharacters */
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master^");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/^master");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "^refs/heads/master");

	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master~");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/~master");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "~refs/heads/master");

	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master:");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/:master");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, ":refs/heads/master");

/* ShellGlob */
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master?");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/?master");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "?refs/heads/master");

	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master[");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/[master");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "[refs/heads/master");

	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master*");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/*master");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "*refs/heads/master");

/* ValidSpecialCharacters */
	FUNC1
		(GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/!", "refs/heads/!");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/\"", "refs/heads/\"");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/#", "refs/heads/#");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/$", "refs/heads/$");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/%", "refs/heads/%");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/&", "refs/heads/&");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/'", "refs/heads/'");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/(", "refs/heads/(");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/)", "refs/heads/)");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/+", "refs/heads/+");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/,", "refs/heads/,");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/-", "refs/heads/-");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/;", "refs/heads/;");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/<", "refs/heads/<");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/=", "refs/heads/=");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/>", "refs/heads/>");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/@", "refs/heads/@");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/]", "refs/heads/]");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/_", "refs/heads/_");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/`", "refs/heads/`");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/{", "refs/heads/{");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/|", "refs/heads/|");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/}", "refs/heads/}");

	/*
	 * This is valid on UNIX, but not on Windows
	 * hence we make in invalid due to non-portability
	 */
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/\\");

/* UnicodeNames */
	/*
	 * Currently this fails.
	 * ensure_refname_normalized(GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/\u00e5ngstr\u00f6m", "refs/heads/\u00e5ngstr\u00f6m");
	 */

/* RefLogQueryIsValidRef */
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master@{1}");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master@{1.hour.ago}");
}