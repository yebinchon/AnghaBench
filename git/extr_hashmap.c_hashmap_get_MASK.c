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
struct hashmap_entry {int dummy; } ;
struct hashmap {int dummy; } ;

/* Variables and functions */
 struct hashmap_entry** FUNC0 (struct hashmap const*,struct hashmap_entry const*,void const*) ; 

struct hashmap_entry *FUNC1(const struct hashmap *map,
				const struct hashmap_entry *key,
				const void *keydata)
{
	return *FUNC0(map, key, keydata);
}