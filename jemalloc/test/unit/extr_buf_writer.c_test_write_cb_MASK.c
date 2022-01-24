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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  arg_store ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t,char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 size_t test_write_len ; 

__attribute__((used)) static void FUNC2(void *cbopaque, const char *s) {
	size_t prev_test_write_len = test_write_len;
	test_write_len += FUNC1(s); /* only increase the length */
	arg_store = *(uint64_t *)cbopaque; /* only pass along the argument */
	FUNC0(prev_test_write_len, test_write_len,
	    "Test write overflowed");
}