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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UV_EBUSY ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  rwlock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void* unused) {
  (void) &unused;

  FUNC3(&mutex);

  /* Write lock held by other thread. */
  FUNC0(UV_EBUSY == FUNC6(&rwlock));
  FUNC0(UV_EBUSY == FUNC7(&rwlock));
  FUNC1();

  /* Read lock held by other thread. */
  FUNC0(0 == FUNC6(&rwlock));
  FUNC5(&rwlock);
  FUNC0(UV_EBUSY == FUNC7(&rwlock));
  FUNC1();

  /* Acquire write lock. */
  FUNC0(0 == FUNC7(&rwlock));
  FUNC1();

  /* Release write lock and acquire read lock. */
  FUNC8(&rwlock);
  FUNC0(0 == FUNC6(&rwlock));
  FUNC1();

  FUNC5(&rwlock);
  FUNC2();  /* Signal main thread we're going away. */
  FUNC4(&mutex);
}