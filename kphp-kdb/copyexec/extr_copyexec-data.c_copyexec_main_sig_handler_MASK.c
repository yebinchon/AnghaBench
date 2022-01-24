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

/* Variables and functions */
 int const SIGINT ; 
 int const SIGTERM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 long long pending_signals ; 
 int /*<<< orphan*/  sigterm_receiver_pid ; 

void FUNC1 (const int sig) {
  /* since next operator isn't atomic for 32-bit version, */
  /* sigaction function was used for blocking other signals changing pending_signal variable (sa_mask field) */
  pending_signals |= 1LL << sig;
  if (sig == SIGTERM || sig == SIGINT) {
    sigterm_receiver_pid = FUNC0 ();
  }
}