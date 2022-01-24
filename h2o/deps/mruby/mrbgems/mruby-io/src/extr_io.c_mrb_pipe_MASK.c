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
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 scalar_t__ EMFILE ; 
 scalar_t__ ENFILE ; 
 scalar_t__ errno ; 
 int FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(mrb_state *mrb, int pipes[2])
{
  int ret;
  ret = FUNC0(mrb, pipes);
  if (ret == -1) {
    if (errno == EMFILE || errno == ENFILE) {
      FUNC1(mrb);
      ret = FUNC0(mrb, pipes);
    }
  }
  return ret;
}