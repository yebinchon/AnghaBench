#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {unsigned long len; } ;
struct merge_options {TYPE_2__* repo; TYPE_1__* priv; } ;
struct diff_filespec {int mode; int /*<<< orphan*/  oid; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {int /*<<< orphan*/  index; } ;
struct TYPE_3__ {scalar_t__ call_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADD_CACHE_OK_TO_ADD ; 
 int OBJ_BLOB ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct merge_options*,struct diff_filespec const*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,void*,unsigned long,struct strbuf*) ; 
 int FUNC7 (struct merge_options*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  has_symlinks ; 
 scalar_t__ FUNC9 (struct merge_options*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (char const*,int,int) ; 
 void* FUNC12 (int /*<<< orphan*/ *,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 void* FUNC14 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (int,void*,unsigned long) ; 
 char* FUNC19 (void*,unsigned long) ; 

__attribute__((used)) static int FUNC20(struct merge_options *opt,
			     const struct diff_filespec *contents,
			     const char *path,
			     int update_cache,
			     int update_wd)
{
	int ret = 0;

	if (opt->priv->call_depth)
		update_wd = 0;

	if (update_wd) {
		enum object_type type;
		void *buf;
		unsigned long size;

		if (FUNC0(contents->mode)) {
			/*
			 * We may later decide to recursively descend into
			 * the submodule directory and update its index
			 * and/or work tree, but we do not do that now.
			 */
			update_wd = 0;
			goto update_index;
		}

		buf = FUNC12(&contents->oid, &type, &size);
		if (!buf) {
			ret = FUNC7(opt, FUNC3("cannot read object %s '%s'"),
				  FUNC10(&contents->oid), path);
			goto free_buf;
		}
		if (type != OBJ_BLOB) {
			ret = FUNC7(opt, FUNC3("blob expected for %s '%s'"),
				  FUNC10(&contents->oid), path);
			goto free_buf;
		}
		if (FUNC2(contents->mode)) {
			struct strbuf strbuf = STRBUF_INIT;
			if (FUNC6(opt->repo->index,
						    path, buf, size, &strbuf)) {
				FUNC8(buf);
				size = strbuf.len;
				buf = FUNC14(&strbuf, NULL);
			}
		}

		if (FUNC9(opt, path) < 0) {
			update_wd = 0;
			goto free_buf;
		}
		if (FUNC2(contents->mode) ||
		    (!has_symlinks && FUNC1(contents->mode))) {
			int fd;
			int mode = (contents->mode & 0100 ? 0777 : 0666);

			fd = FUNC11(path, O_WRONLY | O_TRUNC | O_CREAT, mode);
			if (fd < 0) {
				ret = FUNC7(opt, FUNC3("failed to open '%s': %s"),
					  path, FUNC15(errno));
				goto free_buf;
			}
			FUNC18(fd, buf, size);
			FUNC5(fd);
		} else if (FUNC1(contents->mode)) {
			char *lnk = FUNC19(buf, size);
			FUNC13(path);
			FUNC17(path);
			if (FUNC16(lnk, path))
				ret = FUNC7(opt, FUNC3("failed to symlink '%s': %s"),
					  path, FUNC15(errno));
			FUNC8(lnk);
		} else
			ret = FUNC7(opt,
				  FUNC3("do not know what to do with %06o %s '%s'"),
				  contents->mode, FUNC10(&contents->oid), path);
	free_buf:
		FUNC8(buf);
	}
update_index:
	if (!ret && update_cache)
		if (FUNC4(opt, contents, path, 0, update_wd,
				  ADD_CACHE_OK_TO_ADD))
			return -1;
	return ret;
}