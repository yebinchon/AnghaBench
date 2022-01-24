#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_mode; } ;
struct TYPE_14__ {int /*<<< orphan*/  free; int /*<<< orphan*/  close; int /*<<< orphan*/  write; } ;
struct checkout_stream {char const* path; int fd; int open; TYPE_6__ base; } ;
typedef  scalar_t__ mode_t ;
struct TYPE_12__ {int /*<<< orphan*/ * temp_buf; int /*<<< orphan*/ * attr_session; } ;
typedef  TYPE_3__ git_filter_options ;
typedef  int /*<<< orphan*/  git_filter_list ;
typedef  int /*<<< orphan*/  git_blob ;
struct TYPE_11__ {int /*<<< orphan*/  stat_calls; } ;
struct TYPE_10__ {int file_open_flags; int /*<<< orphan*/  disable_filters; int /*<<< orphan*/  dir_mode; scalar_t__ file_mode; } ;
struct TYPE_13__ {TYPE_2__ perfdata; int /*<<< orphan*/  repo; TYPE_1__ opts; int /*<<< orphan*/  tmp; int /*<<< orphan*/  attr_session; } ;
typedef  TYPE_4__ checkout_data ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 scalar_t__ GIT_FILEMODE_BLOB ; 
 TYPE_3__ GIT_FILTER_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_FILTER_TO_WORKTREE ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  checkout_stream_close ; 
 int /*<<< orphan*/  checkout_stream_free ; 
 int /*<<< orphan*/  checkout_stream_write ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (struct checkout_stream*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (TYPE_4__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (char const*,int,scalar_t__) ; 
 int FUNC9 (char const*,struct stat*) ; 

__attribute__((used)) static int FUNC10(
	checkout_data *data,
	struct stat *st,
	git_blob *blob,
	const char *path,
	const char *hint_path,
	mode_t entry_filemode)
{
	int flags = data->opts.file_open_flags;
	mode_t file_mode = data->opts.file_mode ?
		data->opts.file_mode : entry_filemode;
	git_filter_options filter_opts = GIT_FILTER_OPTIONS_INIT;
	struct checkout_stream writer;
	mode_t mode;
	git_filter_list *fl = NULL;
	int fd;
	int error = 0;

	if (hint_path == NULL)
		hint_path = path;

	if ((error = FUNC6(data, path, data->opts.dir_mode)) < 0)
		return error;

	if (flags <= 0)
		flags = O_CREAT | O_TRUNC | O_WRONLY;
	if (!(mode = file_mode))
		mode = GIT_FILEMODE_BLOB;

	if ((fd = FUNC8(path, flags, mode)) < 0) {
		FUNC1(GIT_ERROR_OS, "could not open '%s' for writing", path);
		return fd;
	}

	filter_opts.attr_session = &data->attr_session;
	filter_opts.temp_buf = &data->tmp;

	if (!data->opts.disable_filters &&
		(error = FUNC2(
			&fl, data->repo, blob, hint_path,
			GIT_FILTER_TO_WORKTREE, &filter_opts))) {
		FUNC7(fd);
		return error;
	}

	/* setup the writer */
	FUNC5(&writer, 0, sizeof(struct checkout_stream));
	writer.base.write = checkout_stream_write;
	writer.base.close = checkout_stream_close;
	writer.base.free = checkout_stream_free;
	writer.path = path;
	writer.fd = fd;
	writer.open = 1;

	error = FUNC4(fl, blob, &writer.base);

	FUNC0(writer.open == 0);

	FUNC3(fl);

	if (error < 0)
		return error;

	if (st) {
		data->perfdata.stat_calls++;

		if ((error = FUNC9(path, st)) < 0) {
			FUNC1(GIT_ERROR_OS, "failed to stat '%s'", path);
			return error;
		}

		st->st_mode = entry_filemode;
	}

	return 0;
}