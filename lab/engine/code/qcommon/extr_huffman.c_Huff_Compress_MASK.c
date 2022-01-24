#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int cursize; int* data; } ;
typedef  TYPE_2__ msg_t ;
struct TYPE_10__ {TYPE_1__* tree; TYPE_1__* lhead; int /*<<< orphan*/  blocNode; TYPE_1__* nodeList; TYPE_1__** loc; } ;
typedef  TYPE_3__ huff_t ;
typedef  int byte ;
struct TYPE_8__ {size_t symbol; int /*<<< orphan*/ * right; int /*<<< orphan*/  left; int /*<<< orphan*/  parent; int /*<<< orphan*/ * prev; int /*<<< orphan*/  next; scalar_t__ weight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int*,int) ; 
 size_t NYT ; 
 int bloc ; 

void FUNC4(msg_t *mbuf, int offset) {
	int			i, ch, size;
	byte		seq[65536];
	byte*		buffer;
	huff_t		huff;

	size = mbuf->cursize - offset;
	buffer = mbuf->data + offset;

	if (size<=0) {
		return;
	}

	FUNC1(&huff, 0, sizeof(huff_t));
	// Add the NYT (not yet transmitted) node into the tree/list */
	huff.tree = huff.lhead = huff.loc[NYT] =  &(huff.nodeList[huff.blocNode++]);
	huff.tree->symbol = NYT;
	huff.tree->weight = 0;
	huff.lhead->next = *(huff.lhead->prev = NULL);
	huff.tree->parent = huff.tree->left = *(huff.tree->right = NULL);

	seq[0] = (size>>8);
	seq[1] = size&0xff;

	bloc = 16;

	for (i=0; i<size; i++ ) {
		ch = buffer[i];
		FUNC3(&huff, ch, seq, size<<3);						/* Transmit symbol */
		FUNC2(&huff, (byte)ch);								/* Do update */
	}

	// When encoding finishes at a byte boundary, the final memcpy is actually
	// sending an extra byte of junk data. We need to manually set this byte,
	// otherwise we are sending uninitialized data.
	if (bloc % 8 == 0) {
		seq[bloc / 8] = 0;
	}

	bloc += 8;												// next byte

	mbuf->cursize = (bloc>>3) + offset;
	FUNC0(mbuf->data+offset, seq, (bloc>>3));
}