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
struct TYPE_2__ {int posted; int /*<<< orphan*/  mutex; int /*<<< orphan*/  sem; scalar_t__ delay; } ;
typedef  TYPE_1__ worker_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(void* arg) {
  worker_config* c = arg;

  if (c->delay)
    FUNC4(c->delay);

  FUNC1(&c->mutex);
  FUNC0(c->posted == 0);
  FUNC3(&c->sem);
  c->posted = 1;
  FUNC2(&c->mutex);
}