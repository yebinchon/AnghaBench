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
struct repository {int dummy; } ;
struct replay_opts {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 unsigned int EDIT_MSG ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  SUMMARY_SHOW_AUTHOR_DATE ; 
 unsigned int VERIFY_MSG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*) ; 
 int /*<<< orphan*/  FUNC4 (struct replay_opts*) ; 
 int /*<<< orphan*/  FUNC5 (struct repository*,int /*<<< orphan*/ *,struct object_id*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct repository*,char const*,struct replay_opts*,unsigned int) ; 
 scalar_t__ FUNC7 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int FUNC9 (struct repository*,struct strbuf*,char const*,struct replay_opts*,unsigned int,struct object_id*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct repository *r,
		     const char *msg_file, const char *author,
		     struct replay_opts *opts, unsigned int flags)
{
	int res = 1;

	if (!(flags & EDIT_MSG) && !(flags & VERIFY_MSG)) {
		struct object_id oid;
		struct strbuf sb = STRBUF_INIT;

		if (msg_file && FUNC7(&sb, msg_file, 2048) < 0)
			return FUNC1(FUNC0("unable to read commit message "
					     "from '%s'"),
					   msg_file);

		res = FUNC9(r, msg_file ? &sb : NULL,
				    author, opts, flags, &oid);
		FUNC8(&sb);
		if (!res) {
			FUNC10(FUNC2(r));
			FUNC10(FUNC3(r));
			if (!FUNC4(opts))
				FUNC5(r, NULL, &oid,
						SUMMARY_SHOW_AUTHOR_DATE);
			return res;
		}
	}
	if (res == 1)
		return FUNC6(r, msg_file, opts, flags);

	return res;
}