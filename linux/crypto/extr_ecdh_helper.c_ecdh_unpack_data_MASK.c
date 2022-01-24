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
typedef  void u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void const*,size_t) ; 

__attribute__((used)) static inline const u8 *FUNC1(void *dst, const void *src, size_t sz)
{
	FUNC0(dst, src, sz);
	return src + sz;
}