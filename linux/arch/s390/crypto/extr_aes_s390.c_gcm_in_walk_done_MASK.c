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
struct gcm_sg_walk {unsigned int buf_bytes; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gcm_sg_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct gcm_sg_walk *gw, unsigned int bytesdone)
{
	if (gw->ptr == NULL)
		return 0;

	if (gw->ptr == gw->buf) {
		int n = gw->buf_bytes - bytesdone;
		if (n > 0) {
			FUNC1(gw->buf, gw->buf + bytesdone, n);
			gw->buf_bytes = n;
		} else
			gw->buf_bytes = 0;
	} else
		FUNC0(gw, bytesdone);

	return bytesdone;
}