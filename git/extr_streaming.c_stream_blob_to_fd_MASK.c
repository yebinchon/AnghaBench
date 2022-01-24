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
struct stream_filter {int dummy; } ;
struct object_id {int dummy; } ;
struct git_istream {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ off_t ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int OBJ_BLOB ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (struct git_istream*) ; 
 int /*<<< orphan*/  FUNC1 (struct stream_filter*) ; 
 scalar_t__ FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 struct git_istream* FUNC3 (struct object_id const*,int*,unsigned long*,struct stream_filter*) ; 
 int FUNC4 (struct git_istream*,char*,int) ; 
 int FUNC5 (int,char*,int) ; 
 int FUNC6 (int,char*,int) ; 

int FUNC7(int fd, const struct object_id *oid, struct stream_filter *filter,
		      int can_seek)
{
	struct git_istream *st;
	enum object_type type;
	unsigned long sz;
	ssize_t kept = 0;
	int result = -1;

	st = FUNC3(oid, &type, &sz, filter);
	if (!st) {
		if (filter)
			FUNC1(filter);
		return result;
	}
	if (type != OBJ_BLOB)
		goto close_and_exit;
	for (;;) {
		char buf[1024 * 16];
		ssize_t wrote, holeto;
		ssize_t readlen = FUNC4(st, buf, sizeof(buf));

		if (readlen < 0)
			goto close_and_exit;
		if (!readlen)
			break;
		if (can_seek && sizeof(buf) == readlen) {
			for (holeto = 0; holeto < readlen; holeto++)
				if (buf[holeto])
					break;
			if (readlen == holeto) {
				kept += holeto;
				continue;
			}
		}

		if (kept && FUNC2(fd, kept, SEEK_CUR) == (off_t) -1)
			goto close_and_exit;
		else
			kept = 0;
		wrote = FUNC5(fd, buf, readlen);

		if (wrote < 0)
			goto close_and_exit;
	}
	if (kept && (FUNC2(fd, kept - 1, SEEK_CUR) == (off_t) -1 ||
		     FUNC6(fd, "", 1) != 1))
		goto close_and_exit;
	result = 0;

 close_and_exit:
	FUNC0(st);
	return result;
}