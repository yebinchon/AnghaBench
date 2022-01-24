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
typedef  int /*<<< orphan*/  uv_loop_t ;
struct test_thread {int thread_called; } ;
struct getaddrinfo_req {int counter; int /*<<< orphan*/ * loop; } ;
struct fs_req {int counter; int /*<<< orphan*/ * loop; } ;

/* Variables and functions */
 size_t FUNC0 (struct getaddrinfo_req*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (struct getaddrinfo_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct getaddrinfo_req*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void* arg) {
  struct getaddrinfo_req getaddrinfo_reqs[4];
  struct fs_req fs_reqs[4];
  uv_loop_t loop;
  size_t i;
  struct test_thread* thread = arg;

  FUNC1(0 == FUNC5(&loop));

  for (i = 0; i < FUNC0(getaddrinfo_reqs); i++) {
    struct getaddrinfo_req* req = getaddrinfo_reqs + i;
    req->counter = 4;
    req->loop = &loop;
    FUNC3(req);
  }

  for (i = 0; i < FUNC0(fs_reqs); i++) {
    struct fs_req* req = fs_reqs + i;
    req->counter = 4;
    req->loop = &loop;
    FUNC2(req);
  }

  FUNC1(0 == FUNC6(&loop, UV_RUN_DEFAULT));
  FUNC1(0 == FUNC4(&loop));
  thread->thread_called = 1;
}