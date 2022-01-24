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
struct wordlist_subiterator {unsigned char* data_end; int /*<<< orphan*/  mult; int /*<<< orphan*/  mdec; int /*<<< orphan*/  pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTERPOLATIVE_CODE_JUMP_SIZE ; 
 scalar_t__ idx_max_uid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2 (struct wordlist_subiterator *WI, unsigned char *data, int len) {
  WI->mdec = FUNC1 (idx_max_uid + 1, -1, data, 0, INTERPOLATIVE_CODE_JUMP_SIZE);
  WI->data_end = data + len;
  WI->pos = FUNC0 (WI->mdec, &WI->mult);
}