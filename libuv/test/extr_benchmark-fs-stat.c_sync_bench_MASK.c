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
typedef  int /*<<< orphan*/  uv_fs_t ;
typedef  int uint64_t ;

/* Variables and functions */
 int NUM_SYNC_REQS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC4 () ; 

__attribute__((used)) static void FUNC5(const char* path) {
  uint64_t before;
  uint64_t after;
  uv_fs_t req;
  int i;

  /* do the sync benchmark */
  before = FUNC4();

  for (i = 0; i < NUM_SYNC_REQS; i++)
    FUNC3(&req, path);

  after = FUNC4();

  FUNC2("%s stats (sync): %.2fs (%s/s)\n",
         FUNC1(1.0 * NUM_SYNC_REQS),
         (after - before) / 1e9,
         FUNC1((1.0 * NUM_SYNC_REQS) / ((after - before) / 1e9)));
  FUNC0(stdout);
}