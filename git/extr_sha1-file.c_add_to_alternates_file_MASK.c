#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char const* buf; } ;
struct lock_file {int dummy; } ;
struct TYPE_5__ {TYPE_1__* objects; } ;
struct TYPE_4__ {scalar_t__ loaded_alternates; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 struct lock_file LOCK_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct lock_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct lock_file*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct lock_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char const*,char,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct lock_file*) ; 
 scalar_t__ FUNC12 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char const*) ; 
 TYPE_2__* the_repository ; 

void FUNC15(const char *reference)
{
	struct lock_file lock = LOCK_INIT;
	char *alts = FUNC8("objects/info/alternates");
	FILE *in, *out;
	int found = 0;

	FUNC9(&lock, alts, LOCK_DIE_ON_ERROR);
	out = FUNC4(&lock, "w");
	if (!out)
		FUNC2(FUNC0("unable to fdopen alternates lockfile"));

	in = FUNC5(alts, "r");
	if (in) {
		struct strbuf line = STRBUF_INIT;

		while (FUNC12(&line, in) != EOF) {
			if (!FUNC14(reference, line.buf)) {
				found = 1;
				break;
			}
			FUNC6(out, "%s\n", line.buf);
		}

		FUNC13(&line);
		FUNC3(in);
	}
	else if (errno != ENOENT)
		FUNC2(FUNC0("unable to read alternates file"));

	if (found) {
		FUNC11(&lock);
	} else {
		FUNC6(out, "%s\n", reference);
		if (FUNC1(&lock))
			FUNC2(FUNC0("unable to move new alternates file into place"));
		if (the_repository->objects->loaded_alternates)
			FUNC10(the_repository, reference,
					     '\n', NULL, 0);
	}
	FUNC7(alts);
}