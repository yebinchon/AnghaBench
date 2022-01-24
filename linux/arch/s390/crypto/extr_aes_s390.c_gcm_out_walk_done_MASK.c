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
struct gcm_sg_walk {int /*<<< orphan*/ * buf; int /*<<< orphan*/  walk_ptr; int /*<<< orphan*/  walk_bytes; int /*<<< orphan*/ * ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gcm_sg_walk*) ; 
 int /*<<< orphan*/  FUNC1 (struct gcm_sg_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct gcm_sg_walk *gw, unsigned int bytesdone)
{
	int i, n;

	if (gw->ptr == NULL)
		return 0;

	if (gw->ptr == gw->buf) {
		for (i = 0; i < bytesdone; i += n) {
			if (!FUNC0(gw))
				return i;
			n = FUNC3(gw->walk_bytes, bytesdone - i);
			FUNC2(gw->walk_ptr, gw->buf + i, n);
			FUNC1(gw, n);
		}
	} else
		FUNC1(gw, bytesdone);

	return bytesdone;
}