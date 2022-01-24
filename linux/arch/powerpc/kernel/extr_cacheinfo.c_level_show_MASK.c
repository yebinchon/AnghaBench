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
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct cache_index_dir {struct cache* cache; } ;
struct cache {int level; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct cache_index_dir* FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct kobject *k, struct kobj_attribute *attr, char *buf)
{
	struct cache_index_dir *index;
	struct cache *cache;

	index = FUNC0(k);
	cache = index->cache;

	return FUNC1(buf, "%d\n", cache->level);
}