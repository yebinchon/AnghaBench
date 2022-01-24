#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct notes_tree {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash; } ;
struct leaf_node {TYPE_1__ key_oid; } ;
struct int_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ PTR_TYPE_NOTE ; 
 scalar_t__ FUNC2 (unsigned char const*,int /*<<< orphan*/ ) ; 
 void** FUNC3 (struct notes_tree*,struct int_node**,unsigned char*,unsigned char const*) ; 

__attribute__((used)) static struct leaf_node *FUNC4(struct notes_tree *t,
		struct int_node *tree, unsigned char n,
		const unsigned char *key_sha1)
{
	void **p = FUNC3(t, &tree, &n, key_sha1);
	if (FUNC1(*p) == PTR_TYPE_NOTE) {
		struct leaf_node *l = (struct leaf_node *) FUNC0(*p);
		if (FUNC2(key_sha1, l->key_oid.hash))
			return l;
	}
	return NULL;
}