#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct blkfront_ring_info {unsigned long shadow_free; TYPE_1__* shadow; int /*<<< orphan*/  dev_info; } ;
struct TYPE_6__ {unsigned long id; } ;
struct TYPE_8__ {TYPE_2__ rw; } ;
struct TYPE_7__ {TYPE_4__ u; } ;
struct TYPE_5__ {TYPE_3__ req; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct blkfront_ring_info *rinfo)
{
	unsigned long free = rinfo->shadow_free;

	FUNC1(free >= FUNC0(rinfo->dev_info));
	rinfo->shadow_free = rinfo->shadow[free].req.u.rw.id;
	rinfo->shadow[free].req.u.rw.id = 0x0fffffee; /* debug */
	return free;
}