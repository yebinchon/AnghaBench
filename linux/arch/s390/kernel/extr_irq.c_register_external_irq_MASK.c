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
typedef  int /*<<< orphan*/  u16 ;
struct ext_int_info {int /*<<< orphan*/  entry; int /*<<< orphan*/  handler; int /*<<< orphan*/  code; } ;
typedef  int /*<<< orphan*/  ext_int_handler_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ext_int_hash ; 
 int /*<<< orphan*/  ext_int_hash_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ext_int_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(u16 code, ext_int_handler_t handler)
{
	struct ext_int_info *p;
	unsigned long flags;
	int index;

	p = FUNC2(sizeof(*p), GFP_ATOMIC);
	if (!p)
		return -ENOMEM;
	p->code = code;
	p->handler = handler;
	index = FUNC0(code);

	FUNC3(&ext_int_hash_lock, flags);
	FUNC1(&p->entry, &ext_int_hash[index]);
	FUNC4(&ext_int_hash_lock, flags);
	return 0;
}