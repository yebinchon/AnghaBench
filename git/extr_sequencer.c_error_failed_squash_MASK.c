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
struct repository {int dummy; } ;
struct replay_opts {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (struct repository*,struct commit*,char const*,int,struct replay_opts*,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct repository*) ; 
 char* FUNC5 () ; 
 char* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct repository *r,
			       struct commit *commit,
			       struct replay_opts *opts,
			       int subject_len,
			       const char *subject)
{
	if (FUNC1(FUNC5(), FUNC6(), 0666))
		return FUNC2(FUNC0("could not copy '%s' to '%s'"),
			FUNC6(), FUNC5());
	FUNC7(FUNC4(r));
	if (FUNC1(FUNC4(r), FUNC5(), 0666))
		return FUNC2(FUNC0("could not copy '%s' to '%s'"),
			     FUNC5(),
			     FUNC4(r));
	return FUNC3(r, commit, subject, subject_len, opts, 1, 0);
}