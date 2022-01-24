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
typedef  int /*<<< orphan*/  message ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char const*,int) ; 
 long long pending_signals ; 
 int /*<<< orphan*/  FUNC1 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigterm_immediate_handler ; 

__attribute__((used)) static void FUNC2 (const int sig) {
  const char message[] = "SIGTERM handled.\n";
  FUNC0 (2, message, sizeof (message) - (size_t)1);

  pending_signals |= (1ll << sig);
  FUNC1 (sig, sigterm_immediate_handler);
}