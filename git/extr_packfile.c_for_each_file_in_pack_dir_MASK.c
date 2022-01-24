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
struct strbuf {size_t len; int /*<<< orphan*/  buf; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  (* each_file_in_pack_dir_fn ) (int /*<<< orphan*/ ,size_t,char*,void*) ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,size_t) ; 

void FUNC9(const char *objdir,
			       each_file_in_pack_dir_fn fn,
			       void *data)
{
	struct strbuf path = STRBUF_INIT;
	size_t dirnamelen;
	DIR *dir;
	struct dirent *de;

	FUNC6(&path, objdir);
	FUNC6(&path, "/pack");
	dir = FUNC3(path.buf);
	if (!dir) {
		if (errno != ENOENT)
			FUNC1("unable to open object pack directory: %s",
				    path.buf);
		FUNC7(&path);
		return;
	}
	FUNC5(&path, '/');
	dirnamelen = path.len;
	while ((de = FUNC4(dir)) != NULL) {
		if (FUNC2(de->d_name))
			continue;

		FUNC8(&path, dirnamelen);
		FUNC6(&path, de->d_name);

		fn(path.buf, path.len, de->d_name, data);
	}

	FUNC0(dir);
	FUNC7(&path);
}