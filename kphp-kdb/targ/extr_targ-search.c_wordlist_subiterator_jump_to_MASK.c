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
struct wordlist_subiterator {int pos; int /*<<< orphan*/  mult; int /*<<< orphan*/  mdec; } ;

/* Variables and functions */
 int INFTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct wordlist_subiterator*) ; 

int FUNC3 (struct wordlist_subiterator *WI, int req_pos) {
  if (req_pos == WI->pos + 1) {
    return FUNC2 (WI);
  } else {
    FUNC0 (req_pos > WI->pos);
    int res = FUNC1 (WI->mdec, req_pos, &WI->mult);
    return WI->pos = (res < 0x7fffffff ? res : INFTY);
  }
}