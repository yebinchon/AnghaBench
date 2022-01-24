#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hashfile {scalar_t__ fd; scalar_t__ check_fd; int /*<<< orphan*/  name; int /*<<< orphan*/  buffer; int /*<<< orphan*/  ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  rawsz; int /*<<< orphan*/  (* final_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 unsigned int CSUM_CLOSE ; 
 unsigned int CSUM_FSYNC ; 
 unsigned int CSUM_HASH_IN_STREAM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hashfile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hashfile*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hashfile*) ; 
 int FUNC8 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* the_hash_algo ; 

int FUNC10(struct hashfile *f, unsigned char *result, unsigned int flags)
{
	int fd;

	FUNC7(f);
	the_hash_algo->final_fn(f->buffer, &f->ctx);
	if (result)
		FUNC6(result, f->buffer);
	if (flags & CSUM_HASH_IN_STREAM)
		FUNC3(f, f->buffer, the_hash_algo->rawsz);
	if (flags & CSUM_FSYNC)
		FUNC5(f->fd, f->name);
	if (flags & CSUM_CLOSE) {
		if (FUNC0(f->fd))
			FUNC2("%s: sha1 file error on close", f->name);
		fd = 0;
	} else
		fd = f->fd;
	if (0 <= f->check_fd) {
		char discard;
		int cnt = FUNC8(f->check_fd, &discard, 1);
		if (cnt < 0)
			FUNC2("%s: error when reading the tail of sha1 file",
				  f->name);
		if (cnt)
			FUNC1("%s: sha1 file has trailing garbage", f->name);
		if (FUNC0(f->check_fd))
			FUNC2("%s: sha1 file error on close", f->name);
	}
	FUNC4(f);
	return fd;
}