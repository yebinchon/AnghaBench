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
typedef  int /*<<< orphan*/  uv_signal_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  enum signal_action { ____Placeholder_signal_action } signal_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ONLY_SIGUSR1 ; 
 int ONLY_SIGUSR2 ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int SIGUSR1_AND_SIGUSR2 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  sem ; 
 int /*<<< orphan*/  signal1_cb ; 
 int /*<<< orphan*/  signal2_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void* context) {
  enum signal_action action;
  uv_signal_t signal1a;
  uv_signal_t signal1b;
  uv_signal_t signal2;
  uv_loop_t loop;
  int r;

  action = (enum signal_action) (uintptr_t) context;

  FUNC0(0 == FUNC3(&loop));

  /* Setup the signal watchers and start them. */
  if (action == ONLY_SIGUSR1 || action == SIGUSR1_AND_SIGUSR2) {
    r = FUNC6(&loop, &signal1a);
    FUNC0(r == 0);
    r = FUNC7(&signal1a, signal1_cb, SIGUSR1);
    FUNC0(r == 0);
    r = FUNC6(&loop, &signal1b);
    FUNC0(r == 0);
    r = FUNC7(&signal1b, signal1_cb, SIGUSR1);
    FUNC0(r == 0);
  }

  if (action == ONLY_SIGUSR2 || action == SIGUSR1_AND_SIGUSR2) {
    r = FUNC6(&loop, &signal2);
    FUNC0(r == 0);
    r = FUNC7(&signal2, signal2_cb, SIGUSR2);
    FUNC0(r == 0);
  }

  /* Signal watchers are now set up. */
  FUNC5(&sem);

  /* Wait for all signals. The signal callbacks stop the watcher, so uv_run
   * will return when all signal watchers caught a signal.
   */
  r = FUNC4(&loop, UV_RUN_DEFAULT);
  FUNC0(r == 0);

  /* Restart the signal watchers. */
  if (action == ONLY_SIGUSR1 || action == SIGUSR1_AND_SIGUSR2) {
    r = FUNC7(&signal1a, signal1_cb, SIGUSR1);
    FUNC0(r == 0);
    r = FUNC7(&signal1b, signal1_cb, SIGUSR1);
    FUNC0(r == 0);
  }

  if (action == ONLY_SIGUSR2 || action == SIGUSR1_AND_SIGUSR2) {
    r = FUNC7(&signal2, signal2_cb, SIGUSR2);
    FUNC0(r == 0);
  }

  /* Wait for signals once more. */
  FUNC5(&sem);

  r = FUNC4(&loop, UV_RUN_DEFAULT);
  FUNC0(r == 0);

  /* Close the watchers. */
  if (action == ONLY_SIGUSR1 || action == SIGUSR1_AND_SIGUSR2) {
    FUNC1((uv_handle_t*) &signal1a, NULL);
    FUNC1((uv_handle_t*) &signal1b, NULL);
  }

  if (action == ONLY_SIGUSR2 || action == SIGUSR1_AND_SIGUSR2) {
    FUNC1((uv_handle_t*) &signal2, NULL);
  }

  /* Wait for the signal watchers to close. */
  r = FUNC4(&loop, UV_RUN_DEFAULT);
  FUNC0(r == 0);

  FUNC2(&loop);
}