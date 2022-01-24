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
struct strbuf {int dummy; } ;
struct repository {int different_commondir; int /*<<< orphan*/  commondir; int /*<<< orphan*/  gitdir; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(struct repository *repo,
			       const char *commondir)
{
	struct strbuf sb = STRBUF_INIT;

	FUNC0(repo->commondir);

	if (commondir) {
		repo->different_commondir = 1;
		repo->commondir = FUNC3(commondir);
		return;
	}

	repo->different_commondir = FUNC1(&sb, repo->gitdir);
	repo->commondir = FUNC2(&sb, NULL);
}