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
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sa ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGPOLL ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigint_handler ; 
 int /*<<< orphan*/  sigterm_handler ; 
 int /*<<< orphan*/  sigusr1_handler ; 
 int /*<<< orphan*/  sigusr2_handler ; 

__attribute__((used)) static void FUNC5 (void) {
  FUNC1 ();
  struct sigaction sa;
  FUNC0 (&sa, 0, sizeof (sa));
  sa.sa_handler = sigint_handler;
  FUNC4 (&sa.sa_mask);
  FUNC3 (&sa.sa_mask, SIGTERM);
  FUNC2 (SIGINT, &sa, NULL);

  sa.sa_handler = sigterm_handler;
  FUNC4 (&sa.sa_mask);
  FUNC3 (&sa.sa_mask, SIGINT);
  FUNC2 (SIGTERM, &sa, NULL);

  sa.sa_handler = SIG_IGN;
  FUNC2 (SIGPIPE, &sa, NULL);
  FUNC2 (SIGPOLL, &sa, NULL);
  FUNC2 (SIGUSR1, &sa, NULL);

  sa.sa_handler = sigusr1_handler;
  FUNC4 (&sa.sa_mask);
  FUNC2 (SIGUSR1, &sa, NULL);

  sa.sa_handler = sigusr2_handler;
  FUNC4 (&sa.sa_mask);
  FUNC2 (SIGUSR2, &sa, NULL);

}