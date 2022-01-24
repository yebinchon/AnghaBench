#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  temp ;
struct strbuf_expand_dict_entry {char* placeholder; char* value; } ;
struct strbuf {char* buf; } ;
struct stat {int /*<<< orphan*/  st_size; } ;
struct ll_merge_options {int dummy; } ;
struct ll_merge_driver {int /*<<< orphan*/ * cmdline; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  mmfile_t ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ mmbuffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  RUN_USING_SHELL ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (struct ll_merge_options const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,struct stat*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct strbuf_expand_dict_entry**) ; 
 int /*<<< orphan*/  strbuf_expand_dict_cb ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC15(const struct ll_merge_driver *fn,
			mmbuffer_t *result,
			const char *path,
			mmfile_t *orig, const char *orig_name,
			mmfile_t *src1, const char *name1,
			mmfile_t *src2, const char *name2,
			const struct ll_merge_options *opts,
			int marker_size)
{
	char temp[4][50];
	struct strbuf cmd = STRBUF_INIT;
	struct strbuf_expand_dict_entry dict[6];
	struct strbuf path_sq = STRBUF_INIT;
	const char *args[] = { NULL, NULL };
	int status, fd, i;
	struct stat st;
	FUNC1(opts);

	FUNC9(&path_sq, path);
	dict[0].placeholder = "O"; dict[0].value = temp[0];
	dict[1].placeholder = "A"; dict[1].value = temp[1];
	dict[2].placeholder = "B"; dict[2].value = temp[2];
	dict[3].placeholder = "L"; dict[3].value = temp[3];
	dict[4].placeholder = "P"; dict[4].value = path_sq.buf;
	dict[5].placeholder = NULL; dict[5].value = NULL;

	if (fn->cmdline == NULL)
		FUNC4("custom merge driver %s lacks command line.", fn->name);

	result->ptr = NULL;
	result->size = 0;
	FUNC3(orig, temp[0], sizeof(temp[0]));
	FUNC3(src1, temp[1], sizeof(temp[1]));
	FUNC3(src2, temp[2], sizeof(temp[2]));
	FUNC14(temp[3], sizeof(temp[3]), "%d", marker_size);

	FUNC10(&cmd, fn->cmdline, strbuf_expand_dict_cb, &dict);

	args[0] = cmd.buf;
	status = FUNC8(args, RUN_USING_SHELL);
	fd = FUNC6(temp[1], O_RDONLY);
	if (fd < 0)
		goto bad;
	if (FUNC5(fd, &st))
		goto close_bad;
	result->size = st.st_size;
	result->ptr = FUNC13(result->size);
	if (FUNC7(fd, result->ptr, result->size) != result->size) {
		FUNC0(result->ptr);
		result->size = 0;
	}
 close_bad:
	FUNC2(fd);
 bad:
	for (i = 0; i < 3; i++)
		FUNC12(temp[i]);
	FUNC11(&cmd);
	FUNC11(&path_sq);
	return status;
}