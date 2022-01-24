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
struct TYPE_3__ {int /*<<< orphan*/  literal_buf_; int /*<<< orphan*/  command_buf_; int /*<<< orphan*/  large_table_; int /*<<< orphan*/  hasher_; int /*<<< orphan*/  ringbuffer_; int /*<<< orphan*/  commands_; int /*<<< orphan*/  storage_; int /*<<< orphan*/  memory_manager_; } ;
typedef  int /*<<< orphan*/  MemoryManager ;
typedef  TYPE_1__ BrotliEncoderState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(BrotliEncoderState* s) {
  MemoryManager* m = &s->memory_manager_;
  if (FUNC1(m)) {
    FUNC2(m);
    return;
  }
  FUNC0(m, s->storage_);
  FUNC0(m, s->commands_);
  FUNC4(m, &s->ringbuffer_);
  FUNC3(m, &s->hasher_);
  FUNC0(m, s->large_table_);
  FUNC0(m, s->command_buf_);
  FUNC0(m, s->literal_buf_);
}