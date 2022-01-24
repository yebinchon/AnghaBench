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
typedef  scalar_t__ hook_dalloc_t ;

/* Variables and functions */
 void* arg_address ; 
 void* arg_extra ; 
 int arg_type ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  call_count ; 
 int /*<<< orphan*/  FUNC1 (uintptr_t*,int) ; 

__attribute__((used)) static void
FUNC2(void *extra, hook_dalloc_t type, void *address,
    uintptr_t args_raw[3]) {
	call_count++;
	arg_extra = extra;
	arg_type = (int)type;
	arg_address = address;
	FUNC1(args_raw, 3);
	FUNC0();
}