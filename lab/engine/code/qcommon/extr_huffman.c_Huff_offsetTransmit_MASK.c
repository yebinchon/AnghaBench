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
struct TYPE_3__ {int /*<<< orphan*/ * loc; } ;
typedef  TYPE_1__ huff_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int bloc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC1 (huff_t *huff, int ch, byte *fout, int *offset, int maxoffset) {
	bloc = *offset;
	FUNC0(huff->loc[ch], NULL, fout, maxoffset);
	*offset = bloc;
}