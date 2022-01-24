#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spu_context {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct spu_context* i_ctx; } ;
struct TYPE_3__ {int /*<<< orphan*/  files; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 struct file* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  match_context ; 

__attribute__((used)) static struct spu_context *FUNC4(int *fd)
{
	struct file *file;
	int n = FUNC3(current->files, *fd, match_context, NULL);
	if (!n)
		return NULL;
	*fd = n - 1;
	file = FUNC1(*fd);
	return FUNC0(FUNC2(file))->i_ctx;
}