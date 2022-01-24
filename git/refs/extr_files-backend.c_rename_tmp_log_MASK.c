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
struct strbuf {char* buf; } ;
struct rename_cb {char* tmp_renamed_log; int /*<<< orphan*/  true_errno; } ;
struct files_ref_store {int dummy; } ;

/* Variables and functions */
 scalar_t__ EISDIR ; 
 struct strbuf STRBUF_INIT ; 
 char const* TMP_RENAMED_LOG ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct files_ref_store*,struct strbuf*,char const*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,struct rename_cb*) ; 
 int /*<<< orphan*/  rename_tmp_log_callback ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct files_ref_store *refs, const char *newrefname)
{
	struct strbuf path = STRBUF_INIT;
	struct strbuf tmp = STRBUF_INIT;
	struct rename_cb cb;
	int ret;

	FUNC1(refs, &path, newrefname);
	FUNC1(refs, &tmp, TMP_RENAMED_LOG);
	cb.tmp_renamed_log = tmp.buf;
	ret = FUNC2(path.buf, rename_tmp_log_callback, &cb);
	if (ret) {
		if (errno == EISDIR)
			FUNC0("directory not empty: %s", path.buf);
		else
			FUNC0("unable to move logfile %s to %s: %s",
			      tmp.buf, path.buf,
			      FUNC4(cb.true_errno));
	}

	FUNC3(&path);
	FUNC3(&tmp);
	return ret;
}