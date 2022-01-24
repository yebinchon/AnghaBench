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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct lock_file {int dummy; } ;

/* Variables and functions */
 struct lock_file LOCK_INIT ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct lock_file*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (char*,char const*) ; 
 int FUNC4 (struct lock_file*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct object_id const*) ; 
 char const* FUNC6 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC7 (struct object_id*,struct object_id const*) ; 
 scalar_t__ FUNC8 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC9 (struct lock_file*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(const char *pseudoref, const struct object_id *oid,
			   const struct object_id *old_oid, struct strbuf *err)
{
	const char *filename;
	int fd;
	struct lock_file lock = LOCK_INIT;
	struct strbuf buf = STRBUF_INIT;
	int ret = -1;

	if (!oid)
		return 0;

	FUNC10(&buf, "%s\n", FUNC6(oid));

	filename = FUNC3("%s", pseudoref);
	fd = FUNC4(&lock, filename, 0,
					       FUNC2());
	if (fd < 0) {
		FUNC10(err, FUNC0("could not open '%s' for writing: %s"),
			    filename, FUNC12(errno));
		goto done;
	}

	if (old_oid) {
		struct object_id actual_old_oid;

		if (FUNC8(pseudoref, &actual_old_oid)) {
			if (!FUNC5(old_oid)) {
				FUNC10(err, FUNC0("could not read ref '%s'"),
					    pseudoref);
				FUNC9(&lock);
				goto done;
			}
		} else if (FUNC5(old_oid)) {
			FUNC10(err, FUNC0("ref '%s' already exists"),
				    pseudoref);
			FUNC9(&lock);
			goto done;
		} else if (!FUNC7(&actual_old_oid, old_oid)) {
			FUNC10(err, FUNC0("unexpected object ID when writing '%s'"),
				    pseudoref);
			FUNC9(&lock);
			goto done;
		}
	}

	if (FUNC13(fd, buf.buf, buf.len) < 0) {
		FUNC10(err, FUNC0("could not write to '%s'"), filename);
		FUNC9(&lock);
		goto done;
	}

	FUNC1(&lock);
	ret = 0;
done:
	FUNC11(&buf);
	return ret;
}