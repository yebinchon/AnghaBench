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
struct scatterlist {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  sg; } ;
struct gcm_sg_walk {unsigned int walk_bytes; TYPE_1__ walk; int /*<<< orphan*/  walk_ptr; int /*<<< orphan*/  walk_bytes_remain; } ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct scatterlist*) ; 
 struct scatterlist* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int FUNC4(struct gcm_sg_walk *gw)
{
	struct scatterlist *nextsg;

	gw->walk_bytes = FUNC0(&gw->walk, gw->walk_bytes_remain);
	while (!gw->walk_bytes) {
		nextsg = FUNC3(gw->walk.sg);
		if (!nextsg)
			return 0;
		FUNC2(&gw->walk, nextsg);
		gw->walk_bytes = FUNC0(&gw->walk,
						   gw->walk_bytes_remain);
	}
	gw->walk_ptr = FUNC1(&gw->walk);
	return gw->walk_bytes;
}