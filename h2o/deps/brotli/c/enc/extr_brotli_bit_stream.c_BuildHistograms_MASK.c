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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int cmd_prefix_; size_t insert_len_; int /*<<< orphan*/  dist_prefix_; } ;
typedef  int /*<<< orphan*/  HistogramLiteral ;
typedef  int /*<<< orphan*/  HistogramDistance ;
typedef  int /*<<< orphan*/  HistogramCommand ;
typedef  TYPE_1__ Command ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC4(const uint8_t* input,
                            size_t start_pos,
                            size_t mask,
                            const Command *commands,
                            size_t n_commands,
                            HistogramLiteral* lit_histo,
                            HistogramCommand* cmd_histo,
                            HistogramDistance* dist_histo) {
  size_t pos = start_pos;
  size_t i;
  for (i = 0; i < n_commands; ++i) {
    const Command cmd = commands[i];
    size_t j;
    FUNC1(cmd_histo, cmd.cmd_prefix_);
    for (j = cmd.insert_len_; j != 0; --j) {
      FUNC3(lit_histo, input[pos & mask]);
      ++pos;
    }
    pos += FUNC0(&cmd);
    if (FUNC0(&cmd) && cmd.cmd_prefix_ >= 128) {
      FUNC2(dist_histo, cmd.dist_prefix_);
    }
  }
}