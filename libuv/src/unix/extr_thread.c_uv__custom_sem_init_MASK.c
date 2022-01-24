#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int value; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; } ;
typedef  TYPE_1__ uv_semaphore_t ;
typedef  int /*<<< orphan*/  uv_sem_t ;

/* Variables and functions */
 int UV_ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(uv_sem_t* sem_, unsigned int value) {
  int err;
  uv_semaphore_t* sem;

  sem = FUNC1(sizeof(*sem));
  if (sem == NULL)
    return UV_ENOMEM;

  if ((err = FUNC4(&sem->mutex)) != 0) {
    FUNC0(sem);
    return err;
  }

  if ((err = FUNC2(&sem->cond)) != 0) {
    FUNC3(&sem->mutex);
    FUNC0(sem);
    return err;
  }

  sem->value = value;
  *(uv_semaphore_t**)sem_ = sem;
  return 0;
}