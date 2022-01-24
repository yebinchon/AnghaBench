#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hash; } ;
struct TYPE_5__ {char const* path; unsigned int pathlen; TYPE_1__ oid; int /*<<< orphan*/  mode; } ;
struct tree_desc {TYPE_2__ entry; } ;
struct strbuf {int dummy; } ;
struct TYPE_6__ {unsigned int rawsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 char* FUNC2 (char const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 
 TYPE_3__* the_hash_algo ; 

__attribute__((used)) static int FUNC6(struct tree_desc *desc, const char *buf, unsigned long size, struct strbuf *err)
{
	const char *path;
	unsigned int mode, len;
	const unsigned hashsz = the_hash_algo->rawsz;

	if (size < hashsz + 3 || buf[size - (hashsz + 1)]) {
		FUNC4(err, FUNC0("too-short tree object"));
		return -1;
	}

	path = FUNC2(buf, &mode);
	if (!path) {
		FUNC4(err, FUNC0("malformed mode in tree entry"));
		return -1;
	}
	if (!*path) {
		FUNC4(err, FUNC0("empty filename in tree entry"));
		return -1;
	}
	len = FUNC5(path) + 1;

	/* Initialize the descriptor entry */
	desc->entry.path = path;
	desc->entry.mode = FUNC1(mode);
	desc->entry.pathlen = len - 1;
	FUNC3(desc->entry.oid.hash, (const unsigned char *)path + len);

	return 0;
}