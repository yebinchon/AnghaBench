#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ count; scalar_t__ n; int /*<<< orphan*/  turnstile2; int /*<<< orphan*/  mutex; int /*<<< orphan*/  turnstile1; } ;
typedef  TYPE_1__ uv_barrier_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(uv_barrier_t* barrier) {
  int serial_thread;

  FUNC0(&barrier->mutex);
  if (++barrier->count == barrier->n) {
    FUNC3(&barrier->turnstile2);
    FUNC2(&barrier->turnstile1);
  }
  FUNC1(&barrier->mutex);

  FUNC3(&barrier->turnstile1);
  FUNC2(&barrier->turnstile1);

  FUNC0(&barrier->mutex);
  serial_thread = (--barrier->count == 0);
  if (serial_thread) {
    FUNC3(&barrier->turnstile1);
    FUNC2(&barrier->turnstile2);
  }
  FUNC1(&barrier->mutex);

  FUNC3(&barrier->turnstile2);
  FUNC2(&barrier->turnstile2);
  return serial_thread;
}