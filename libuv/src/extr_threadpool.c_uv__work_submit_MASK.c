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
struct uv__work {void (* work ) (struct uv__work*) ;void (* done ) (struct uv__work*,int) ;int /*<<< orphan*/  wq; int /*<<< orphan*/ * loop; } ;
typedef  enum uv__work_kind { ____Placeholder_uv__work_kind } uv__work_kind ;

/* Variables and functions */
 int /*<<< orphan*/  init_once ; 
 int /*<<< orphan*/  once ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(uv_loop_t* loop,
                     struct uv__work* w,
                     enum uv__work_kind kind,
                     void (*work)(struct uv__work* w),
                     void (*done)(struct uv__work* w, int status)) {
  FUNC1(&once, init_once);
  w->loop = loop;
  w->work = work;
  w->done = done;
  FUNC0(&w->wq, kind);
}