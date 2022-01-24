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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {size_t type_; } ;
struct TYPE_8__ {int cmd_prefix_; size_t insert_len_; int /*<<< orphan*/  dist_prefix_; } ;
typedef  int /*<<< orphan*/  HistogramLiteral ;
typedef  int /*<<< orphan*/  HistogramDistance ;
typedef  int /*<<< orphan*/  HistogramCommand ;
typedef  int /*<<< orphan*/  ContextType ;
typedef  TYPE_1__ Command ;
typedef  TYPE_2__ BlockSplitIterator ;
typedef  int /*<<< orphan*/  BlockSplit ;

/* Variables and functions */
 size_t BROTLI_DISTANCE_CONTEXT_BITS ; 
 size_t BROTLI_LITERAL_CONTEXT_BITS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 size_t FUNC2 (TYPE_1__ const*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/  const*) ; 

void FUNC8(
    const Command* cmds, const size_t num_commands,
    const BlockSplit* literal_split, const BlockSplit* insert_and_copy_split,
    const BlockSplit* dist_split, const uint8_t* ringbuffer, size_t start_pos,
    size_t mask, uint8_t prev_byte, uint8_t prev_byte2,
    const ContextType* context_modes, HistogramLiteral* literal_histograms,
    HistogramCommand* insert_and_copy_histograms,
    HistogramDistance* copy_dist_histograms) {
  size_t pos = start_pos;
  BlockSplitIterator literal_it;
  BlockSplitIterator insert_and_copy_it;
  BlockSplitIterator dist_it;
  size_t i;

  FUNC7(&literal_it, literal_split);
  FUNC7(&insert_and_copy_it, insert_and_copy_split);
  FUNC7(&dist_it, dist_split);
  for (i = 0; i < num_commands; ++i) {
    const Command* cmd = &cmds[i];
    size_t j;
    FUNC0(&insert_and_copy_it);
    FUNC4(&insert_and_copy_histograms[insert_and_copy_it.type_],
        cmd->cmd_prefix_);
    for (j = cmd->insert_len_; j != 0; --j) {
      size_t context;
      FUNC0(&literal_it);
      context = context_modes ?
          ((literal_it.type_ << BROTLI_LITERAL_CONTEXT_BITS) +
              FUNC3(prev_byte, prev_byte2, context_modes[literal_it.type_])) :
          literal_it.type_;
      FUNC6(&literal_histograms[context],
          ringbuffer[pos & mask]);
      prev_byte2 = prev_byte;
      prev_byte = ringbuffer[pos & mask];
      ++pos;
    }
    pos += FUNC1(cmd);
    if (FUNC1(cmd)) {
      prev_byte2 = ringbuffer[(pos - 2) & mask];
      prev_byte = ringbuffer[(pos - 1) & mask];
      if (cmd->cmd_prefix_ >= 128) {
        size_t context;
        FUNC0(&dist_it);
        context = (dist_it.type_ << BROTLI_DISTANCE_CONTEXT_BITS) +
            FUNC2(cmd);
        FUNC5(&copy_dist_histograms[context],
            cmd->dist_prefix_);
      }
    }
  }
}