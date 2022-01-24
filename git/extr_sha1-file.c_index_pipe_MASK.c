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
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (struct index_state*,struct object_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*,unsigned int) ; 
 scalar_t__ FUNC1 (struct strbuf*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

__attribute__((used)) static int FUNC3(struct index_state *istate, struct object_id *oid,
		      int fd, enum object_type type,
		      const char *path, unsigned flags)
{
	struct strbuf sbuf = STRBUF_INIT;
	int ret;

	if (FUNC1(&sbuf, fd, 4096) >= 0)
		ret = FUNC0(istate, oid, sbuf.buf, sbuf.len, type, path, flags);
	else
		ret = -1;
	FUNC2(&sbuf);
	return ret;
}