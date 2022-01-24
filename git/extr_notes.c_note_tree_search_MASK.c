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
struct int_node {void** a; } ;

/* Variables and functions */
 struct int_node* FUNC0 (void*) ; 
 unsigned char FUNC1 (unsigned char,unsigned char const*) ; 
 int FUNC2 (void*) ; 
#define  PTR_TYPE_INTERNAL 129 
#define  PTR_TYPE_SUBTREE 128 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct leaf_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct notes_tree*,struct leaf_node*,struct int_node*,unsigned char) ; 

__attribute__((used)) static void **FUNC6(struct notes_tree *t, struct int_node **tree,
		unsigned char *n, const unsigned char *key_sha1)
{
	struct leaf_node *l;
	unsigned char i;
	void *p = (*tree)->a[0];

	if (FUNC2(p) == PTR_TYPE_SUBTREE) {
		l = (struct leaf_node *) FUNC0(p);
		if (!FUNC3(key_sha1, l->key_oid.hash)) {
			/* unpack tree and resume search */
			(*tree)->a[0] = NULL;
			FUNC5(t, l, *tree, *n);
			FUNC4(l);
			return FUNC6(t, tree, n, key_sha1);
		}
	}

	i = FUNC1(*n, key_sha1);
	p = (*tree)->a[i];
	switch (FUNC2(p)) {
	case PTR_TYPE_INTERNAL:
		*tree = FUNC0(p);
		(*n)++;
		return FUNC6(t, tree, n, key_sha1);
	case PTR_TYPE_SUBTREE:
		l = (struct leaf_node *) FUNC0(p);
		if (!FUNC3(key_sha1, l->key_oid.hash)) {
			/* unpack tree and resume search */
			(*tree)->a[i] = NULL;
			FUNC5(t, l, *tree, *n);
			FUNC4(l);
			return FUNC6(t, tree, n, key_sha1);
		}
		/* fall through */
	default:
		return &((*tree)->a[i]);
	}
}