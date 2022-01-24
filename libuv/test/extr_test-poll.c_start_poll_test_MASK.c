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
struct WSAData {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int NUM_CLIENTS ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int FUNC3 (int /*<<< orphan*/ ,struct WSAData*) ; 
 int closed_connections ; 
 int disconnects ; 
 int spurious_writable_wakeups ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int valid_writable_wakeups ; 

__attribute__((used)) static void FUNC8(void) {
  int i, r;

#ifdef _WIN32
  {
    struct WSAData wsa_data;
    int r = WSAStartup(MAKEWORD(2, 2), &wsa_data);
    ASSERT(r == 0);
  }
#endif

  FUNC5();

  for (i = 0; i < NUM_CLIENTS; i++)
    FUNC4();

  r = FUNC7(FUNC6(), UV_RUN_DEFAULT);
  FUNC0(r == 0);

  /* Assert that at most five percent of the writable wakeups was spurious. */
  FUNC0(spurious_writable_wakeups == 0 ||
         (valid_writable_wakeups + spurious_writable_wakeups) /
         spurious_writable_wakeups > 20);

  FUNC0(closed_connections == NUM_CLIENTS * 2);
#if !defined(__sun) && !defined(_AIX) && !defined(__MVS__)
  FUNC0(disconnects == NUM_CLIENTS * 2);
#endif
  FUNC2();
}