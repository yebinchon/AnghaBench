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
struct request {int dummy; } ;
struct floppy_state {struct request* cur_req; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned int,struct request*) ; 

__attribute__((used)) static bool FUNC4(struct floppy_state *fs, blk_status_t err, unsigned int nr_bytes)
{
	struct request *req = fs->cur_req;

	FUNC3("  end request, err=%d nr_bytes=%d, cur_req=%p\n",
		  err, nr_bytes, req);

	if (err)
		nr_bytes = FUNC1(req);
	if (FUNC2(req, err, nr_bytes))
		return true;
	FUNC0(req, err);
	fs->cur_req = NULL;
	return false;
}