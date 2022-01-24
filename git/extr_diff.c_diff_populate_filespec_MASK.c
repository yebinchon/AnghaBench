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
struct strbuf {scalar_t__ len; } ;
struct stat {int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_size; } ;
struct repository {int /*<<< orphan*/  index; } ;
struct diff_filespec {char* data; scalar_t__ size; int should_free; int is_binary; int should_munmap; int /*<<< orphan*/  oid; int /*<<< orphan*/  path; int /*<<< orphan*/  oid_valid; int /*<<< orphan*/  mode; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 unsigned int CHECK_BINARY ; 
 unsigned int CHECK_SIZE_ONLY ; 
 int CONV_EOL_RNDTRP_DIE ; 
 int CONV_EOL_RNDTRP_WARN ; 
 int /*<<< orphan*/  FUNC0 (struct diff_filespec*) ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ big_file_threshold ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (struct diff_filespec*,int) ; 
 int global_conv_flags_eol ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 int FUNC10 (struct repository*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC13 (int /*<<< orphan*/ *,int*,scalar_t__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC15 (struct strbuf*,size_t*) ; 
 scalar_t__ FUNC16 (struct strbuf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC18 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

int FUNC20(struct repository *r,
			   struct diff_filespec *s,
			   unsigned int flags)
{
	int size_only = flags & CHECK_SIZE_ONLY;
	int err = 0;
	int conv_flags = global_conv_flags_eol;
	/*
	 * demote FAIL to WARN to allow inspecting the situation
	 * instead of refusing.
	 */
	if (conv_flags & CONV_EOL_RNDTRP_DIE)
		conv_flags = CONV_EOL_RNDTRP_WARN;

	if (!FUNC0(s))
		FUNC6("internal error: asking to populate invalid file.");
	if (FUNC1(s->mode))
		return -1;

	if (s->data)
		return 0;

	if (size_only && 0 < s->size)
		return 0;

	if (FUNC2(s->mode))
		return FUNC7(s, size_only);

	if (!s->oid_valid ||
	    FUNC14(r->index, s->path, &s->oid, 0)) {
		struct strbuf buf = STRBUF_INIT;
		struct stat st;
		int fd;

		if (FUNC8(s->path, &st) < 0) {
		err_empty:
			err = -1;
		empty:
			s->data = (char *)"";
			s->size = 0;
			return err;
		}
		s->size = FUNC19(st.st_size);
		if (!s->size)
			goto empty;
		if (FUNC3(st.st_mode)) {
			struct strbuf sb = STRBUF_INIT;

			if (FUNC16(&sb, s->path, s->size))
				goto err_empty;
			s->size = sb.len;
			s->data = FUNC15(&sb, NULL);
			s->should_free = 1;
			return 0;
		}

		/*
		 * Even if the caller would be happy with getting
		 * only the size, we cannot return early at this
		 * point if the path requires us to run the content
		 * conversion.
		 */
		if (size_only && !FUNC17(r->index, s->path))
			return 0;

		/*
		 * Note: this check uses xsize_t(st.st_size) that may
		 * not be the true size of the blob after it goes
		 * through convert_to_git().  This may not strictly be
		 * correct, but the whole point of big_file_threshold
		 * and is_binary check being that we want to avoid
		 * opening the file and inspecting the contents, this
		 * is probably fine.
		 */
		if ((flags & CHECK_BINARY) &&
		    s->size > big_file_threshold && s->is_binary == -1) {
			s->is_binary = 1;
			return 0;
		}
		fd = FUNC12(s->path, O_RDONLY);
		if (fd < 0)
			goto err_empty;
		s->data = FUNC18(NULL, s->size, PROT_READ, MAP_PRIVATE, fd, 0);
		FUNC4(fd);
		s->should_munmap = 1;

		/*
		 * Convert from working tree format to canonical git format
		 */
		if (FUNC5(r->index, s->path, s->data, s->size, &buf, conv_flags)) {
			size_t size = 0;
			FUNC9(s->data, s->size);
			s->should_munmap = 0;
			s->data = FUNC15(&buf, &size);
			s->size = size;
			s->should_free = 1;
		}
	}
	else {
		enum object_type type;
		if (size_only || (flags & CHECK_BINARY)) {
			type = FUNC10(r, &s->oid, &s->size);
			if (type < 0)
				FUNC6("unable to read %s",
				    FUNC11(&s->oid));
			if (size_only)
				return 0;
			if (s->size > big_file_threshold && s->is_binary == -1) {
				s->is_binary = 1;
				return 0;
			}
		}
		s->data = FUNC13(&s->oid, &type, &s->size);
		if (!s->data)
			FUNC6("unable to read %s", FUNC11(&s->oid));
		s->should_free = 1;
	}
	return 0;
}