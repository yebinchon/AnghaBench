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
typedef  int /*<<< orphan*/  brotli_free_func ;
typedef  scalar_t__ (* brotli_alloc_func ) (void*,int) ;
struct TYPE_4__ {int /*<<< orphan*/  memory_manager_; } ;
typedef  TYPE_1__ BrotliEncoderState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__ (*) (void*,int),int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC2 (int) ; 

BrotliEncoderState* FUNC3(brotli_alloc_func alloc_func,
                                                brotli_free_func free_func,
                                                void* opaque) {
  BrotliEncoderState* state = 0;
  if (!alloc_func && !free_func) {
    state = (BrotliEncoderState*)FUNC2(sizeof(BrotliEncoderState));
  } else if (alloc_func && free_func) {
    state = (BrotliEncoderState*)alloc_func(opaque, sizeof(BrotliEncoderState));
  }
  if (state == 0) {
    /* BROTLI_DUMP(); */
    return 0;
  }
  FUNC1(
      &state->memory_manager_, alloc_func, free_func, opaque);
  FUNC0(state);
  return state;
}