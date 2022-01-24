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
struct TYPE_4__ {size_t curr_histogram_ix_; scalar_t__ block_size_; scalar_t__ target_block_size_; int /*<<< orphan*/ * histograms_; } ;
typedef  int /*<<< orphan*/  MemoryManager ;
typedef  TYPE_1__ ContextBlockSplitter ;

/* Variables and functions */
 int /*<<< orphan*/  BROTLI_FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC3(
    ContextBlockSplitter* self, MemoryManager* m,
    size_t symbol, size_t context) {
  FUNC2(&self->histograms_[self->curr_histogram_ix_ + context],
      symbol);
  ++self->block_size_;
  if (self->block_size_ == self->target_block_size_) {
    FUNC1(self, m, /* is_final = */ BROTLI_FALSE);
    if (FUNC0(m)) return;
  }
}