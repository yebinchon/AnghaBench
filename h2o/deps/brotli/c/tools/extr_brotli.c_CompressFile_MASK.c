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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/ * output; int /*<<< orphan*/  current_output_path; int /*<<< orphan*/  fout; int /*<<< orphan*/  current_input_path; int /*<<< orphan*/  fin; int /*<<< orphan*/ * input; } ;
typedef  TYPE_1__ Context ;
typedef  int /*<<< orphan*/  BrotliEncoderState ;
typedef  scalar_t__ BROTLI_BOOL ;

/* Variables and functions */
 scalar_t__ BROTLI_FALSE ; 
 int /*<<< orphan*/  BROTLI_OPERATION_FINISH ; 
 int /*<<< orphan*/  BROTLI_OPERATION_PROCESS ; 
 scalar_t__ BROTLI_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ ) ; 
 size_t kFileBufferSize ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BROTLI_BOOL FUNC9(Context* context, BrotliEncoderState* s) {
  size_t available_in = 0;
  const uint8_t* next_in = NULL;
  size_t available_out = kFileBufferSize;
  uint8_t* next_out = context->output;
  BROTLI_BOOL is_eof = BROTLI_FALSE;

  for (;;) {
    if (available_in == 0 && !is_eof) {
      available_in = FUNC6(context->input, 1, kFileBufferSize, context->fin);
      next_in = context->input;
      if (FUNC4(context->fin)) {
        FUNC5(stderr, "failed to read input [%s]: %s\n",
                FUNC2(context->current_input_path), FUNC8(errno));
        return BROTLI_FALSE;
      }
      is_eof = FUNC3(context->fin) ? BROTLI_TRUE : BROTLI_FALSE;
    }

    if (!FUNC0(s,
        is_eof ? BROTLI_OPERATION_FINISH : BROTLI_OPERATION_PROCESS,
        &available_in, &next_in, &available_out, &next_out, NULL)) {
      /* Should detect OOM? */
      FUNC5(stderr, "failed to compress data [%s]\n",
              FUNC2(context->current_input_path));
      return BROTLI_FALSE;
    }

    if (available_out != kFileBufferSize) {
      size_t out_size = kFileBufferSize - available_out;
      FUNC7(context->output, 1, out_size, context->fout);
      if (FUNC4(context->fout)) {
        FUNC5(stderr, "failed to write output [%s]: %s\n",
                FUNC2(context->current_output_path), FUNC8(errno));
        return BROTLI_FALSE;
      }
      available_out = kFileBufferSize;
      next_out = context->output;
    }

    if (FUNC1(s)) return BROTLI_TRUE;
  }
}