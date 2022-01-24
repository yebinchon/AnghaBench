#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* tail; size_t* children; } ;
typedef  TYPE_1__ trie_node ;
typedef  size_t node_index ;
struct TYPE_7__ {int min_length; scalar_t__ full; TYPE_1__* nodes; } ;
typedef  TYPE_2__ git_oid_shorten ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int GIT_OID_HEXSZ ; 
 int FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,size_t,int,char const*) ; 

int FUNC3(git_oid_shorten *os, const char *text_oid)
{
	int i;
	bool is_leaf;
	node_index idx;

	if (os->full) {
		FUNC1(GIT_ERROR_INVALID, "unable to shorten OID - OID set full");
		return -1;
	}

	if (text_oid == NULL)
		return os->min_length;

	idx = 0;
	is_leaf = false;

	for (i = 0; i < GIT_OID_HEXSZ; ++i) {
		int c = FUNC0(text_oid[i]);
		trie_node *node;

		if (c == -1) {
			FUNC1(GIT_ERROR_INVALID, "unable to shorten OID - invalid hex value");
			return -1;
		}

		node = &os->nodes[idx];

		if (is_leaf) {
			const char *tail;

			tail = node->tail;
			node->tail = NULL;

			node = FUNC2(os, idx, FUNC0(tail[0]), &tail[1]);
			if (node == NULL) {
				if (os->full)
					FUNC1(GIT_ERROR_INVALID, "unable to shorten OID - OID set full");
				return -1;
			}
		}

		if (node->children[c] == 0) {
			if (FUNC2(os, idx, c, &text_oid[i + 1]) == NULL) {
				if (os->full)
					FUNC1(GIT_ERROR_INVALID, "unable to shorten OID - OID set full");
				return -1;
			}
			break;
		}

		idx = node->children[c];
		is_leaf = false;

		if (idx < 0) {
			node->children[c] = idx = -idx;
			is_leaf = true;
		}
	}

	if (++i > os->min_length)
		os->min_length = i;

	return os->min_length;
}