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
struct traverse_info {int /*<<< orphan*/  pathlen; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static inline size_t FUNC1(const struct traverse_info *info,
				       size_t namelen)
{
	return FUNC0(info->pathlen, namelen);
}