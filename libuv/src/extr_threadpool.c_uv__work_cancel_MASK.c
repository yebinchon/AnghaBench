#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_req_t ;
struct TYPE_5__ {int /*<<< orphan*/  wq_mutex; int /*<<< orphan*/  wq_async; int /*<<< orphan*/  wq; } ;
typedef  TYPE_2__ uv_loop_t ;
struct uv__work {int /*<<< orphan*/  wq; int /*<<< orphan*/ * work; TYPE_1__* loop; } ;
struct TYPE_4__ {int /*<<< orphan*/  wq_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int UV_EBUSY ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/ * uv__cancelled ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(uv_loop_t* loop, uv_req_t* req, struct uv__work* w) {
  int cancelled;

  FUNC4(&mutex);
  FUNC4(&w->loop->wq_mutex);

  cancelled = !FUNC0(&w->wq) && w->work != NULL;
  if (cancelled)
    FUNC2(&w->wq);

  FUNC5(&w->loop->wq_mutex);
  FUNC5(&mutex);

  if (!cancelled)
    return UV_EBUSY;

  w->work = uv__cancelled;
  FUNC4(&loop->wq_mutex);
  FUNC1(&loop->wq, &w->wq);
  FUNC3(&loop->wq_async);
  FUNC5(&loop->wq_mutex);

  return 0;
}