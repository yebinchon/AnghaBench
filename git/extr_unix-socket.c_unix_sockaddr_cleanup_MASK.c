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
struct unix_sockaddr_context {int /*<<< orphan*/  orig_dir; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct unix_sockaddr_context *ctx)
{
	if (!ctx->orig_dir)
		return;
	/*
	 * If we fail, we can't just return an error, since we have
	 * moved the cwd of the whole process, which could confuse calling
	 * code.  We are better off to just die.
	 */
	if (FUNC0(ctx->orig_dir) < 0)
		FUNC1("unable to restore original working directory");
	FUNC2(ctx->orig_dir);
}