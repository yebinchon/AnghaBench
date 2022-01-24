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
struct gcm_sg_walk {unsigned int walk_bytes_remain; int /*<<< orphan*/ * walk_ptr; int /*<<< orphan*/  walk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct gcm_sg_walk *gw,
					     unsigned int nbytes)
{
	gw->walk_bytes_remain -= nbytes;
	FUNC2(&gw->walk);
	FUNC0(&gw->walk, nbytes);
	FUNC1(&gw->walk, 0, gw->walk_bytes_remain);
	gw->walk_ptr = NULL;
}