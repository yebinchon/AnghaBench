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
typedef  int /*<<< orphan*/  oidstr ;
typedef  int /*<<< orphan*/  git_tag ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/  const*) ; 
 char* FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(const git_tag *tag)
{
	char oidstr[GIT_OID_HEXSZ + 1];

	FUNC1(oidstr, sizeof(oidstr), FUNC5(tag));;
	FUNC8("object %s\n", oidstr);
	FUNC8("type %s\n", FUNC0(FUNC6(tag)));
	FUNC8("tag %s\n", FUNC3(tag));
	FUNC7("tagger", FUNC4(tag));

	if (FUNC2(tag))
		FUNC8("\n%s\n", FUNC2(tag));
}