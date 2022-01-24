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
typedef  int uint64_t ;
struct async_req {char const* path; int* count; int /*<<< orphan*/  fs_req; } ;

/* Variables and functions */
 int MAX_CONCURRENT_REQS ; 
 double NUM_ASYNC_REQS ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int,char*) ; 
 int /*<<< orphan*/  stat_cb ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const char* path) {
  struct async_req reqs[MAX_CONCURRENT_REQS];
  struct async_req* req;
  uint64_t before;
  uint64_t after;
  int count;
  int i;

  for (i = 1; i <= MAX_CONCURRENT_REQS; i++) {
    count = NUM_ASYNC_REQS;

    for (req = reqs; req < reqs + i; req++) {
      req->path = path;
      req->count = &count;
      FUNC4(FUNC3(), &req->fs_req, req->path, stat_cb);
    }

    before = FUNC5();
    FUNC6(FUNC3(), UV_RUN_DEFAULT);
    after = FUNC5();

    FUNC2("%s stats (%d concurrent): %.2fs (%s/s)\n",
           FUNC1(1.0 * NUM_ASYNC_REQS),
           i,
           (after - before) / 1e9,
           FUNC1((1.0 * NUM_ASYNC_REQS) / ((after - before) / 1e9)));
    FUNC0(stdout);
  }
}