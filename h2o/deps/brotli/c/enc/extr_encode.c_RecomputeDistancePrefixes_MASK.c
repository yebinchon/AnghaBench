#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int cmd_prefix_; int /*<<< orphan*/  dist_extra_; int /*<<< orphan*/  dist_prefix_; } ;
typedef  TYPE_1__ Command ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(Command* cmds,
                                      size_t num_commands,
                                      uint32_t num_direct_distance_codes,
                                      uint32_t distance_postfix_bits) {
  size_t i;
  if (num_direct_distance_codes == 0 && distance_postfix_bits == 0) {
    return;
  }
  for (i = 0; i < num_commands; ++i) {
    Command* cmd = &cmds[i];
    if (FUNC0(cmd) && cmd->cmd_prefix_ >= 128) {
      FUNC2(FUNC1(cmd),
                               num_direct_distance_codes,
                               distance_postfix_bits,
                               &cmd->dist_prefix_,
                               &cmd->dist_extra_);
    }
  }
}