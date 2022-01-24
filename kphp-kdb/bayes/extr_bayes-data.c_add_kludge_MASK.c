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
typedef  int ll ;

/* Variables and functions */
 int HASH_MUL ; 
 scalar_t__ KLUDGE ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int* words ; 
 int /*<<< orphan*/  words_len ; 

void FUNC2 (int type, int num) {
  if (debug) {
    FUNC1 (stderr, "KLUDGE %d %d\n", type, num);
  }
  FUNC0 ("KLUDGE %d %d | %lld\n", type, num, (long long)(ll)((ll)(KLUDGE + type) * HASH_MUL + num));
  words[words_len++] = (ll)(KLUDGE + type) * HASH_MUL + num;
}