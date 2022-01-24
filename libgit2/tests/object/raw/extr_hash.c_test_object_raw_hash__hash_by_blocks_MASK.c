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
typedef  int /*<<< orphan*/  git_hash_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  bye_id ; 
 int /*<<< orphan*/  bye_text ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hello_id ; 
 int /*<<< orphan*/  hello_text ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(void)
{
	git_hash_ctx ctx;
	git_oid id1, id2;

	FUNC1(FUNC3(&ctx));

	/* should already be init'd */
	FUNC1(FUNC6(&ctx, hello_text, FUNC9(hello_text)));
	FUNC1(FUNC4(&id2, &ctx));
	FUNC1(FUNC8(&id1, hello_id));
	FUNC0(FUNC7(&id1, &id2) == 0);

	/* reinit should permit reuse */
	FUNC1(FUNC5(&ctx));
	FUNC1(FUNC6(&ctx, bye_text, FUNC9(bye_text)));
	FUNC1(FUNC4(&id2, &ctx));
	FUNC1(FUNC8(&id1, bye_id));
	FUNC0(FUNC7(&id1, &id2) == 0);

	FUNC2(&ctx);
}