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
struct device_node {int dummy; } ;
struct cache {int dummy; } ;

/* Variables and functions */
 struct cache* FUNC0 (struct device_node*,int) ; 
 struct cache* FUNC1 (struct device_node*,int) ; 
 scalar_t__ FUNC2 (struct device_node*) ; 

__attribute__((used)) static struct cache *FUNC3(struct device_node *node, int level)
{
	struct cache *cache;

	if (FUNC2(node))
		cache = FUNC1(node, level);
	else
		cache = FUNC0(node, level);

	return cache;
}