#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t stack_size; } ;
typedef  TYPE_1__ uv_thread_options_t ;
struct rlimit {int rlim_cur; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RLIMIT_STACK ; 
 int RLIM_INFINITY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct rlimit*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void* arg) {
#if defined(__APPLE__)
  size_t expected;
  expected = arg == NULL ? 0 : ((uv_thread_options_t*)arg)->stack_size;
  /* 512 kB is the default stack size of threads other than the main thread
   * on MacOS. */
  if (expected == 0)
    expected = 512 * 1024;
  ASSERT(pthread_get_stacksize_np(pthread_self()) >= expected);
#elif defined(__linux__) && defined(__GLIBC__)
  size_t expected;
  struct rlimit lim;
  size_t stack_size;
  pthread_attr_t attr;
  ASSERT(0 == getrlimit(RLIMIT_STACK, &lim));
  if (lim.rlim_cur == RLIM_INFINITY)
    lim.rlim_cur = 2 << 20;  /* glibc default. */
  ASSERT(0 == pthread_getattr_np(pthread_self(), &attr));
  ASSERT(0 == pthread_attr_getstacksize(&attr, &stack_size));
  expected = arg == NULL ? 0 : ((uv_thread_options_t*)arg)->stack_size;
  if (expected == 0)
    expected = (size_t)lim.rlim_cur;
  ASSERT(stack_size >= expected);
#endif
}