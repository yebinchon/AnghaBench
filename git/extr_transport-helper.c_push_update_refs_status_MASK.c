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
struct strbuf {int /*<<< orphan*/  len; } ;
struct ref {int /*<<< orphan*/  new_oid; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr; } ;
struct helper_data {TYPE_1__ rs; scalar_t__ no_private_update; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int TRANSPORT_PUSH_DRY_RUN ; 
 char* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct strbuf*,struct ref**,struct ref*) ; 
 scalar_t__ FUNC3 (struct helper_data*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct helper_data *data,
				    struct ref *remote_refs,
				    int flags)
{
	struct strbuf buf = STRBUF_INIT;
	struct ref *ref = remote_refs;
	int ret = 0;

	for (;;) {
		char *private;

		if (FUNC3(data, &buf)) {
			ret = 1;
			break;
		}

		if (!buf.len)
			break;

		if (FUNC2(&buf, &ref, remote_refs))
			continue;

		if (flags & TRANSPORT_PUSH_DRY_RUN || !data->rs.nr || data->no_private_update)
			continue;

		/* propagate back the update to the remote namespace */
		private = FUNC0(&data->rs, ref->name);
		if (!private)
			continue;
		FUNC5("update by helper", private, &ref->new_oid, NULL,
			   0, 0);
		FUNC1(private);
	}
	FUNC4(&buf);
	return ret;
}