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
typedef  scalar_t__ hook_expand_t ;

/* Variables and functions */
 void* arg_address ; 
 void* arg_extra ; 
 size_t arg_new_usize ; 
 size_t arg_old_usize ; 
 uintptr_t arg_result_raw ; 
 int arg_type ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  call_count ; 
 int /*<<< orphan*/  FUNC1 (uintptr_t*,int) ; 

__attribute__((used)) static void
FUNC2(void *extra, hook_expand_t type, void *address,
    size_t old_usize, size_t new_usize, uintptr_t result_raw,
    uintptr_t args_raw[4]) {
	call_count++;
	arg_extra = extra;
	arg_type = (int)type;
	arg_address = address;
	arg_old_usize = old_usize;
	arg_new_usize = new_usize;
	arg_result_raw = result_raw;
	FUNC1(args_raw, 4);
	FUNC0();
}