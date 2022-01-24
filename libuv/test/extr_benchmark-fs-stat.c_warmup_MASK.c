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

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_CONCURRENT_REQS ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  uv_fs_req_cleanup ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char* path) {
  uv_fs_t reqs[MAX_CONCURRENT_REQS];
  unsigned int i;

  /* warm up the thread pool */
  for (i = 0; i < FUNC0(reqs); i++)
    FUNC3(FUNC2(), reqs + i, path, uv_fs_req_cleanup);

  FUNC4(FUNC2(), UV_RUN_DEFAULT);

  /* warm up the OS dirent cache */
  for (i = 0; i < 16; i++)
    FUNC1(reqs + 0, path);
}