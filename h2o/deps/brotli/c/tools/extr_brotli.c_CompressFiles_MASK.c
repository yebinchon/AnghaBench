#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  force_overwrite; int /*<<< orphan*/  current_output_path; scalar_t__ lgwin; scalar_t__ quality; } ;
typedef  TYPE_1__ Context ;
typedef  int /*<<< orphan*/  BrotliEncoderState ;
typedef  scalar_t__ BROTLI_BOOL ;

/* Variables and functions */
 scalar_t__ BROTLI_FALSE ; 
 int /*<<< orphan*/  BROTLI_PARAM_LGWIN ; 
 int /*<<< orphan*/  BROTLI_PARAM_QUALITY ; 
 scalar_t__ BROTLI_TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static BROTLI_BOOL FUNC9(Context* context) {
  while (FUNC5(context)) {
    BROTLI_BOOL is_ok = BROTLI_TRUE;
    BrotliEncoderState* s = FUNC0(NULL, NULL, NULL);
    if (!s) {
      FUNC7(stderr, "out of memory\n");
      return BROTLI_FALSE;
    }
    FUNC2(s,
        BROTLI_PARAM_QUALITY, (uint32_t)context->quality);
    FUNC2(s,
        BROTLI_PARAM_LGWIN, (uint32_t)context->lgwin);
    is_ok = FUNC6(context);
    if (is_ok && !context->current_output_path &&
        !context->force_overwrite && FUNC8(STDOUT_FILENO)) {
      FUNC7(stderr, "Use -h help. Use -f to force output to a terminal.\n");
      is_ok = BROTLI_FALSE;
    }
    if (is_ok) is_ok = FUNC4(context, s);
    FUNC1(s);
    if (!FUNC3(context, is_ok)) is_ok = BROTLI_FALSE;
    if (!is_ok) return BROTLI_FALSE;
  }
  return BROTLI_TRUE;
}