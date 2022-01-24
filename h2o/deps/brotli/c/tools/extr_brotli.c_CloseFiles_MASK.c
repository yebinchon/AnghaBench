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
struct TYPE_3__ {int /*<<< orphan*/ * fout; int /*<<< orphan*/ * fin; scalar_t__ current_input_path; scalar_t__ junk_source; scalar_t__ current_output_path; scalar_t__ copy_stat; int /*<<< orphan*/  test_integrity; } ;
typedef  TYPE_1__ Context ;
typedef  scalar_t__ BROTLI_BOOL ;

/* Variables and functions */
 scalar_t__ BROTLI_FALSE ; 
 scalar_t__ BROTLI_TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static BROTLI_BOOL FUNC6(Context* context, BROTLI_BOOL success) {
  BROTLI_BOOL is_ok = BROTLI_TRUE;
  if (!context->test_integrity && context->fout) {
    if (!success && context->current_output_path) {
      FUNC5(context->current_output_path);
    }
    if (FUNC2(context->fout) != 0) {
      if (success) {
        FUNC3(stderr, "fclose failed [%s]: %s\n",
                FUNC1(context->current_output_path), FUNC4(errno));
      }
      is_ok = BROTLI_FALSE;
    }

    /* TOCTOU violation, but otherwise it is impossible to set file times. */
    if (success && is_ok && context->copy_stat) {
      FUNC0(context->current_input_path, context->current_output_path);
    }
  }

  if (context->fin) {
    if (FUNC2(context->fin) != 0) {
      if (is_ok) {
        FUNC3(stderr, "fclose failed [%s]: %s\n",
                FUNC1(context->current_input_path), FUNC4(errno));
      }
      is_ok = BROTLI_FALSE;
    }
  }
  if (success && context->junk_source && context->current_input_path) {
    FUNC5(context->current_input_path);
  }

  context->fin = NULL;
  context->fout = NULL;

  return is_ok;
}