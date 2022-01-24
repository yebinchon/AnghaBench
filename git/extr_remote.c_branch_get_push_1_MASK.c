#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr; } ;
struct remote {scalar_t__ mirror; int /*<<< orphan*/  name; TYPE_1__ push; } ;
struct branch {char* refname; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  PUSH_DEFAULT_CURRENT 133 
#define  PUSH_DEFAULT_MATCHING 132 
#define  PUSH_DEFAULT_NOTHING 131 
#define  PUSH_DEFAULT_SIMPLE 130 
#define  PUSH_DEFAULT_UNSPECIFIED 129 
#define  PUSH_DEFAULT_UPSTREAM 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (TYPE_1__*,char*) ; 
 char const* FUNC3 (struct branch*,struct strbuf*) ; 
 char const* FUNC4 (struct strbuf*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int push_default ; 
 int /*<<< orphan*/  FUNC6 (struct branch*,int /*<<< orphan*/ *) ; 
 struct remote* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*) ; 
 char const* FUNC9 (struct remote*,char*,struct strbuf*) ; 

__attribute__((used)) static const char *FUNC10(struct branch *branch, struct strbuf *err)
{
	struct remote *remote;

	remote = FUNC7(FUNC6(branch, NULL));
	if (!remote)
		return FUNC4(err,
				 FUNC1("branch '%s' has no remote for pushing"),
				 branch->name);

	if (remote->push.nr) {
		char *dst;
		const char *ret;

		dst = FUNC2(&remote->push, branch->refname);
		if (!dst)
			return FUNC4(err,
					 FUNC1("push refspecs for '%s' do not include '%s'"),
					 remote->name, branch->name);

		ret = FUNC9(remote, dst, err);
		FUNC5(dst);
		return ret;
	}

	if (remote->mirror)
		return FUNC9(remote, branch->refname, err);

	switch (push_default) {
	case PUSH_DEFAULT_NOTHING:
		return FUNC4(err, FUNC1("push has no destination (push.default is 'nothing')"));

	case PUSH_DEFAULT_MATCHING:
	case PUSH_DEFAULT_CURRENT:
		return FUNC9(remote, branch->refname, err);

	case PUSH_DEFAULT_UPSTREAM:
		return FUNC3(branch, err);

	case PUSH_DEFAULT_UNSPECIFIED:
	case PUSH_DEFAULT_SIMPLE:
		{
			const char *up, *cur;

			up = FUNC3(branch, err);
			if (!up)
				return NULL;
			cur = FUNC9(remote, branch->refname, err);
			if (!cur)
				return NULL;
			if (FUNC8(cur, up))
				return FUNC4(err,
						 FUNC1("cannot resolve 'simple' push to a single destination"));
			return cur;
		}
	}

	FUNC0("unhandled push situation");
}