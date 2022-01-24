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
struct TYPE_3__ {int /*<<< orphan*/ ** loc; } ;
typedef  TYPE_1__ huff_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int NYT ; 
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC2 (huff_t *huff, int ch, byte *fout, int maxoffset) {
	int i;
	if (huff->loc[ch] == NULL) { 
		/* node_t hasn't been transmitted, send a NYT, then the symbol */
		FUNC2(huff, NYT, fout, maxoffset);
		for (i = 7; i >= 0; i--) {
			FUNC0((char)((ch >> i) & 0x1), fout);
		}
	} else {
		FUNC1(huff->loc[ch], NULL, fout, maxoffset);
	}
}