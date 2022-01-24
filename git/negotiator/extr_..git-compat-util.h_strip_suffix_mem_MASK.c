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

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((used)) static inline int FUNC2(const char *buf, size_t *len,
				   const char *suffix)
{
	size_t suflen = FUNC1(suffix);
	if (*len < suflen || FUNC0(buf + (*len - suflen), suffix, suflen))
		return 0;
	*len -= suflen;
	return 1;
}