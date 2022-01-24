#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int symbol; struct TYPE_3__* left; struct TYPE_3__* right; } ;
typedef  TYPE_1__ node_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int INTERNAL_NODE ; 
 int bloc ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1 (node_t *node, int *ch, byte *fin, int *offset, int maxoffset) {
	bloc = *offset;
	while (node && node->symbol == INTERNAL_NODE) {
		if (bloc >= maxoffset) {
			*ch = 0;
			*offset = maxoffset + 1;
			return;
		}
		if (FUNC0(fin)) {
			node = node->right;
		} else {
			node = node->left;
		}
	}
	if (!node) {
		*ch = 0;
		return;
//		Com_Error(ERR_DROP, "Illegal tree!");
	}
	*ch = node->symbol;
	*offset = bloc;
}