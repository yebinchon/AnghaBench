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
struct trie {int len; char const* contents; int /*<<< orphan*/ * value; struct trie** children; } ;

/* Variables and functions */
 void* FUNC0 (char const*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct trie**,struct trie**,int) ; 
 int /*<<< orphan*/  FUNC2 (struct trie**,int /*<<< orphan*/ ,int) ; 
 struct trie* FUNC3 (int) ; 
 char const* FUNC4 (char const*,int) ; 

__attribute__((used)) static void *FUNC5(struct trie *root, const char *key, void *value)
{
	struct trie *child;
	void *old;
	int i;

	if (!*key) {
		/* we have reached the end of the key */
		old = root->value;
		root->value = value;
		return old;
	}

	for (i = 0; i < root->len; i++) {
		if (root->contents[i] == key[i])
			continue;

		/*
		 * Split this node: child will contain this node's
		 * existing children.
		 */
		child = FUNC3(sizeof(*child));
		FUNC1(child->children, root->children, sizeof(root->children));

		child->len = root->len - i - 1;
		if (child->len) {
			child->contents = FUNC4(root->contents + i + 1,
						   child->len);
		}
		child->value = root->value;
		root->value = NULL;
		root->len = i;

		FUNC2(root->children, 0, sizeof(root->children));
		root->children[(unsigned char)root->contents[i]] = child;

		/* This is the newly-added child. */
		root->children[(unsigned char)key[i]] =
			FUNC0(key + i + 1, value);
		return NULL;
	}

	/* We have matched the entire compressed section */
	if (key[i]) {
		child = root->children[(unsigned char)key[root->len]];
		if (child) {
			return FUNC5(child, key + root->len + 1, value);
		} else {
			child = FUNC0(key + root->len + 1, value);
			root->children[(unsigned char)key[root->len]] = child;
			return NULL;
		}
	}

	old = root->value;
	root->value = value;
	return old;
}