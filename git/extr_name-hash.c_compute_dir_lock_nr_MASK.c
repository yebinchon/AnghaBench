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
struct hashmap {int dummy; } ;

/* Variables and functions */
 int LAZY_MAX_MUTEX ; 
 int FUNC0 (struct hashmap const*,unsigned int) ; 

__attribute__((used)) static inline int FUNC1(
	const struct hashmap *map,
	unsigned int hash)
{
	return FUNC0(map, hash) % LAZY_MAX_MUTEX;
}