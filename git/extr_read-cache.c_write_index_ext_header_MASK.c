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
struct TYPE_2__ {int /*<<< orphan*/  (* update_fn ) (int /*<<< orphan*/ *,unsigned int*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,unsigned int*,int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int*,int) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static int FUNC4(git_hash_ctx *context, git_hash_ctx *eoie_context,
				  int fd, unsigned int ext, unsigned int sz)
{
	ext = FUNC1(ext);
	sz = FUNC1(sz);
	if (eoie_context) {
		the_hash_algo->update_fn(eoie_context, &ext, 4);
		the_hash_algo->update_fn(eoie_context, &sz, 4);
	}
	return ((FUNC0(context, fd, &ext, 4) < 0) ||
		(FUNC0(context, fd, &sz, 4) < 0)) ? -1 : 0;
}