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
 int /*<<< orphan*/  NB_alloc ; 
 int /*<<< orphan*/  NB_max ; 
 int /*<<< orphan*/  NB_used ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  active_connections ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  connected ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ expect_input ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 scalar_t__ log_file ; 
 int /*<<< orphan*/  maxconn ; 
 int now ; 
 int /*<<< orphan*/  pending_signals ; 
 scalar_t__ quit_steps ; 
 char* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  sigint_handler ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigterm_handler ; 
 int start_time ; 
 int FUNC16 (char*) ; 
 char* username ; 
 int /*<<< orphan*/  FUNC17 (int,char*,...) ; 

void FUNC18 (void) {
  int i;
  int prev_time;

  FUNC10 ();
  FUNC11 ();

  prev_time = 0;

  if (FUNC1 (username) < 0) {
    FUNC12 ("fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC7 (1);
  }

  FUNC3 ();

  FUNC15 (SIGINT, sigint_handler);
  FUNC15 (SIGTERM, sigterm_handler);

  for (i = 0; !pending_signals; i++) {
    if (!(i & 255)) {
      FUNC17 (1, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
	       active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }

    FUNC5 (97);

    if (now != prev_time) {
      prev_time = now;
      FUNC4 ();
      if (!connected && now - start_time > 10) {
        FUNC12 ("Didn't connect to server after 10 seconds.\n");
        FUNC7 (1);
      }
    }

    if (expect_input) {
      FUNC17 (4, "Before readline call.\n");
      char *input = FUNC13 ("TL>");
      if (input[0]) {
        int l;
        if (log_file) {
          FUNC8 (log_file, "TL>%s\n", input);
        }
        FUNC0 (input);
        for (l = FUNC16 (input) - 1; l > 0 && input[l] == ' '; l--) {
          input[l] = 0;
        }

        if (input[0] == '(') {
          FUNC14 (input);
        } else {
          FUNC6 (input);
        }
      }
      if (input != NULL) {
        FUNC9 (input);
      }
    }
    if (quit_steps && !--quit_steps) break;
  }

  FUNC2 ();

}