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
struct index_state {int dummy; } ;

/* Variables and functions */
 unsigned int HASH_WRITE_OBJECT ; 
 int /*<<< orphan*/  OBJ_BLOB ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct index_state*,char const*,int,struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char const* FUNC6 (struct index_state*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*) ; 

__attribute__((used)) static int FUNC8(struct index_state *istate,
				     struct object_id *oid,
				     int fd,
				     const char *path,
				     unsigned flags)
{
	int ret;
	const int write_object = flags & HASH_WRITE_OBJECT;
	struct strbuf sbuf = STRBUF_INIT;

	FUNC0(path);
	FUNC0(FUNC6(istate, path));

	FUNC1(istate, path, fd, &sbuf,
				 FUNC2(flags));

	if (write_object)
		ret = FUNC7(sbuf.buf, sbuf.len, FUNC5(OBJ_BLOB),
					oid);
	else
		ret = FUNC3(sbuf.buf, sbuf.len, FUNC5(OBJ_BLOB),
				       oid);
	FUNC4(&sbuf);
	return ret;
}