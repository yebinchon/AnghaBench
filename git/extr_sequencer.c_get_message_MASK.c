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
struct commit_message {void* label; void* parent_label; int /*<<< orphan*/  subject; int /*<<< orphan*/  message; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct commit*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct commit*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 void* FUNC5 (char*,char const*,...) ; 

__attribute__((used)) static int FUNC6(struct commit *commit, struct commit_message *out)
{
	const char *abbrev, *subject;
	int subject_len;

	out->message = FUNC2(commit, NULL, FUNC1());
	abbrev = FUNC3(commit);

	subject_len = FUNC0(out->message, &subject);

	out->subject = FUNC4(subject, subject_len);
	out->label = FUNC5("%s... %s", abbrev, out->subject);
	out->parent_label = FUNC5("parent of %s", out->label);

	return 0;
}