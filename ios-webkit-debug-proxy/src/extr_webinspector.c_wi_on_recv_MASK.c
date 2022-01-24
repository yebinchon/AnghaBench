#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* wi_t ;
typedef  int /*<<< orphan*/  wi_status ;
typedef  TYPE_2__* wi_private_t ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_9__ {int /*<<< orphan*/  in; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* on_error ) (TYPE_1__*,char*) ;TYPE_2__* private_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  WI_ERROR ; 
 int /*<<< orphan*/  WI_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

wi_status FUNC6(wi_t self, const char *buf, ssize_t length) {
  wi_private_t my = self->private_state;
  if (length < 0) {
    return WI_ERROR;
  } else if (length == 0) {
    return WI_SUCCESS;
  }
  FUNC4(self, "wi.recv", buf, length);
  if (FUNC0(my->in, buf, length)) {
    return self->on_error(self, "begin_input buffer error");
  }
  wi_status ret = FUNC5(self);
  if (FUNC1(my->in)) {
    return self->on_error(self, "end_input buffer error");
  }
  return ret;
}