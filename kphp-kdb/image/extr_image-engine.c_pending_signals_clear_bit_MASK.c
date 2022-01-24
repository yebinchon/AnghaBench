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
typedef  int /*<<< orphan*/  const sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 long long pending_signals ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC2 (const sigset_t *ss, const int sig) {
  sigset_t old;
  int r = FUNC1 (SIG_BLOCK, ss, &old);
  FUNC0 (!r);
  pending_signals &= ~(1LL << sig);
  r = FUNC1 (SIG_SETMASK, &old, NULL);
  FUNC0 (!r);
}