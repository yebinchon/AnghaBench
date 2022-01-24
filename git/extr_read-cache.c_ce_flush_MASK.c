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
typedef  int /*<<< orphan*/  git_hash_ctx ;
struct TYPE_2__ {scalar_t__ rawsz; int /*<<< orphan*/  (* final_fn ) (scalar_t__,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* update_fn ) (int /*<<< orphan*/ *,scalar_t__,unsigned int) ;} ;

/* Variables and functions */
 scalar_t__ WRITE_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_1__* the_hash_algo ; 
 scalar_t__ write_buffer ; 
 unsigned int write_buffer_len ; 
 scalar_t__ FUNC3 (int,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC4(git_hash_ctx *context, int fd, unsigned char *hash)
{
	unsigned int left = write_buffer_len;

	if (left) {
		write_buffer_len = 0;
		the_hash_algo->update_fn(context, write_buffer, left);
	}

	/* Flush first if not enough space for hash signature */
	if (left + the_hash_algo->rawsz > WRITE_BUFFER_SIZE) {
		if (FUNC3(fd, write_buffer, left) < 0)
			return -1;
		left = 0;
	}

	/* Append the hash signature at the end */
	the_hash_algo->final_fn(write_buffer + left, context);
	FUNC0(hash, write_buffer + left);
	left += the_hash_algo->rawsz;
	return (FUNC3(fd, write_buffer, left) < 0) ? -1 : 0;
}