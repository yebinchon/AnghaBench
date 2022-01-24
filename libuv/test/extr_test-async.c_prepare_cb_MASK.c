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
typedef  int /*<<< orphan*/  uv_prepare_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  prepare ; 
 int /*<<< orphan*/  prepare_cb_called ; 
 int /*<<< orphan*/  thread ; 
 int /*<<< orphan*/  thread_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(uv_prepare_t* handle) {
  int r;

  FUNC0(handle == &prepare);

  if (prepare_cb_called++)
    return;

  r = FUNC2(&thread, thread_cb, NULL);
  FUNC0(r == 0);
  FUNC1(&mutex);
}