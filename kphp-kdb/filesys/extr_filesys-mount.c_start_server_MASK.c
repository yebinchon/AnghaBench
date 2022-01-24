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
 int NB_alloc ; 
 int NB_max ; 
 int NB_used ; 
 int active_connections ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ct_filesys_engine_server ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  ff_sfd ; 
 int /*<<< orphan*/  ff_stop_server ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int maxconn ; 
 int /*<<< orphan*/  memcache_methods ; 
 int now ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static void *FUNC10 (void *arg) {
  int i, prev_time = 0;

  FUNC6 ();
  FUNC8 ();
  FUNC7 (ff_sfd, &ct_filesys_engine_server, &memcache_methods);

  for (i = 0; !ff_stop_server ; i++) {
    if (verbosity > 0 && !(i & 255)) {
      FUNC5 (stderr, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
	       active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC4 (67);

    if (now != prev_time) {
      prev_time = now;
      FUNC1 ();
    }

    if (&epoll_pre_event) {
      FUNC3();
    }
  }

  FUNC2 (ff_sfd);
  FUNC0 (ff_sfd);
  FUNC9 (NULL);
}