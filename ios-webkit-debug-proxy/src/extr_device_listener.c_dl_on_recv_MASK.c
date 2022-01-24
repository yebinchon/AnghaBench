#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ssize_t ;
typedef  TYPE_1__* dl_t ;
typedef  int /*<<< orphan*/  dl_status ;
typedef  TYPE_2__* dl_private_t ;
struct TYPE_6__ {int /*<<< orphan*/  in; } ;
struct TYPE_5__ {TYPE_2__* private_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL_ERROR ; 
 int /*<<< orphan*/  DL_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

dl_status FUNC3(dl_t self, const char *buf, ssize_t length) {
  dl_private_t my = self->private_state;
  if (length < 0) {
    return DL_ERROR;
  } else if (length == 0) {
    return DL_SUCCESS;
  }
  if (FUNC0(my->in, buf, length)) {
    return DL_ERROR;
  }
  dl_status ret = FUNC2(self);
  if (FUNC1(my->in)) {
    return DL_ERROR;
  }
  return ret;
}