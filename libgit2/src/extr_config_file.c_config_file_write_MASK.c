#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  write_data ;
struct TYPE_14__ {size_t asize; int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
struct write_data {char* orig_section; char* section; char* orig_name; char* name; char const* value; TYPE_2__ buffered_comment; int /*<<< orphan*/  const* preg; TYPE_2__* buf; } ;
typedef  int /*<<< orphan*/  git_regexp ;
typedef  int /*<<< orphan*/  git_filebuf ;
typedef  int /*<<< orphan*/  git_config_parser ;
typedef  TYPE_2__ git_buf ;
struct TYPE_13__ {int /*<<< orphan*/  path; } ;
struct TYPE_15__ {int /*<<< orphan*/  parent; TYPE_2__ locked_content; scalar_t__ locked; TYPE_1__ file; } ;
typedef  TYPE_3__ config_file_backend ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CONFIG_FILE_MODE ; 
 int /*<<< orphan*/  GIT_CONFIG_PARSER_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GIT_FILEBUF_HASH_CONTENTS ; 
 int /*<<< orphan*/  GIT_FILEBUF_INIT ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 
 char* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct write_data*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct write_data*,int /*<<< orphan*/ ,int) ; 
 char* FUNC19 (char const*,char) ; 
 int /*<<< orphan*/  write_on_comment ; 
 int /*<<< orphan*/  write_on_eof ; 
 int /*<<< orphan*/  write_on_section ; 
 int /*<<< orphan*/  write_on_variable ; 

__attribute__((used)) static int FUNC20(config_file_backend *cfg, const char *orig_key, const char *key, const git_regexp *preg, const char* value)

{
	char *orig_section = NULL, *section = NULL, *orig_name, *name, *ldot;
	git_buf buf = GIT_BUF_INIT, contents = GIT_BUF_INIT;
	git_config_parser parser = GIT_CONFIG_PARSER_INIT;
	git_filebuf file = GIT_FILEBUF_INIT;
	struct write_data write_data;
	int error;

	FUNC18(&write_data, 0, sizeof(write_data));

	if (cfg->locked) {
		error = FUNC9(&contents, FUNC5(&cfg->locked_content) == NULL ? "" : FUNC5(&cfg->locked_content));
	} else {
		if ((error = FUNC15(&file, cfg->file.path, GIT_FILEBUF_HASH_CONTENTS,
					      GIT_CONFIG_FILE_MODE)) < 0)
			goto done;

		/* We need to read in our own config file */
		error = FUNC17(&contents, cfg->file.path);
	}
	if (error < 0 && error != GIT_ENOTFOUND)
		goto done;

	if ((FUNC12(&parser, cfg->file.path, contents.ptr, contents.size)) < 0)
		goto done;

	ldot = FUNC19(key, '.');
	name = ldot + 1;
	section = FUNC3(key, ldot - key);
	FUNC0(section);

	ldot = FUNC19(orig_key, '.');
	orig_name = ldot + 1;
	orig_section = FUNC3(orig_key, ldot - orig_key);
	FUNC0(orig_section);

	write_data.buf = &buf;
	write_data.orig_section = orig_section;
	write_data.section = section;
	write_data.orig_name = orig_name;
	write_data.name = name;
	write_data.preg = preg;
	write_data.value = value;

	if ((error = FUNC10(&parser, write_on_section, write_on_variable,
				      write_on_comment, write_on_eof, &write_data)) < 0)
		goto done;

	if (cfg->locked) {
		size_t len = buf.asize;
		/* Update our copy with the modified contents */
		FUNC7(&cfg->locked_content);
		FUNC4(&cfg->locked_content, FUNC6(&buf), len);
	} else {
		FUNC16(&file, FUNC5(&buf), FUNC8(&buf));

		if ((error = FUNC14(&file)) < 0)
			goto done;

		if ((error = FUNC1(&cfg->parent, buf.ptr, buf.size)) < 0)
			goto done;
	}

done:
	FUNC2(section);
	FUNC2(orig_section);
	FUNC7(&write_data.buffered_comment);
	FUNC7(&buf);
	FUNC7(&contents);
	FUNC13(&file);
	FUNC11(&parser);

	return error;
}