#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct strbuf {unsigned long len; void* buf; } ;
struct object_id {int dummy; } ;
struct index_state {int dummy; } ;
struct diff_tempfile {int /*<<< orphan*/  mode; int /*<<< orphan*/  hex; TYPE_1__* tempfile; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct index_state*,char const*,char const*,size_t,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,int) ; 
 char* FUNC13 (char const*) ; 

__attribute__((used)) static void FUNC14(struct index_state *istate,
			   const char *path, struct diff_tempfile *temp,
			   void *blob,
			   unsigned long size,
			   const struct object_id *oid,
			   int mode)
{
	struct strbuf buf = STRBUF_INIT;
	struct strbuf tempfile = STRBUF_INIT;
	char *path_dup = FUNC13(path);
	const char *base = FUNC0(path_dup);

	/* Generate "XXXXXX_basename.ext" */
	FUNC8(&tempfile, "XXXXXX_");
	FUNC8(&tempfile, base);

	temp->tempfile = FUNC6(tempfile.buf, FUNC10(base) + 1);
	if (!temp->tempfile)
		FUNC3("unable to create temp-file");
	if (FUNC2(istate, path,
			(const char *)blob, (size_t)size, &buf)) {
		blob = buf.buf;
		size = buf.len;
	}
	if (FUNC11(temp->tempfile->fd, blob, size) < 0 ||
	    FUNC1(temp->tempfile))
		FUNC3("unable to write temp-file");
	temp->name = FUNC5(temp->tempfile);
	FUNC7(temp->hex, oid);
	FUNC12(temp->mode, sizeof(temp->mode), "%06o", mode);
	FUNC9(&buf);
	FUNC9(&tempfile);
	FUNC4(path_dup);
}