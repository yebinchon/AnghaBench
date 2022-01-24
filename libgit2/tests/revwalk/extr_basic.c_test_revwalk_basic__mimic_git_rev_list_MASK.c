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
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  GIT_SORT_TIME ; 
 int /*<<< orphan*/  _walk ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
   git_oid oid;

   FUNC9(NULL);
   FUNC8(_walk, GIT_SORT_TIME);

   FUNC2(FUNC7(_walk, "refs/heads/br2"));
   FUNC2(FUNC7(_walk, "refs/heads/master"));
   FUNC2(FUNC3(&oid, "e90810b8df3e80c413d903f631643c716887138d"));
   FUNC2(FUNC6(_walk, &oid));

   FUNC2(FUNC5(&oid, _walk));
   FUNC0(!FUNC4(&oid, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750"));

   FUNC2(FUNC5(&oid, _walk));
   FUNC0(!FUNC4(&oid, "e90810b8df3e80c413d903f631643c716887138d"));

   FUNC2(FUNC5(&oid, _walk));
   FUNC0(!FUNC4(&oid, "6dcf9bf7541ee10456529833502442f385010c3d"));

   FUNC2(FUNC5(&oid, _walk));
   FUNC0(!FUNC4(&oid, "a4a7dce85cf63874e984719f4fdd239f5145052f"));

   FUNC2(FUNC5(&oid, _walk));
   FUNC0(!FUNC4(&oid, "be3563ae3f795b2b4353bcce3a527ad0a4f7f644"));

   FUNC2(FUNC5(&oid, _walk));
   FUNC0(!FUNC4(&oid, "c47800c7266a2be04c571c04d5a6614691ea99bd"));

   FUNC2(FUNC5(&oid, _walk));
   FUNC0(!FUNC4(&oid, "9fd738e8f7967c078dceed8190330fc8648ee56a"));

   FUNC2(FUNC5(&oid, _walk));
   FUNC0(!FUNC4(&oid, "4a202b346bb0fb0db7eff3cffeb3c70babbd2045"));

   FUNC2(FUNC5(&oid, _walk));
   FUNC0(!FUNC4(&oid, "5b5b025afb0b4c913b4c338a42934a3863bf3644"));

   FUNC2(FUNC5(&oid, _walk));
   FUNC0(!FUNC4(&oid, "8496071c1b46c854b31185ea97743be6a8774479"));

   FUNC1(FUNC5(&oid, _walk), GIT_ITEROVER);
}