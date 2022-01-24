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
 long long pending_signals ; 
 int /*<<< orphan*/  sigint_immediate_handler ; 
 int /*<<< orphan*/  FUNC0 (int const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1 (const int sig) {
  pending_signals |= (1LL << sig);
  FUNC0 (sig, sigint_immediate_handler);
}