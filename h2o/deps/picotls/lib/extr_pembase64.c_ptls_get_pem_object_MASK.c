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
typedef  int /*<<< orphan*/  ptls_buffer_t ;
struct TYPE_4__ {scalar_t__ status; scalar_t__ nbc; } ;
typedef  TYPE_1__ ptls_base64_decode_state_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ PTLS_BASE64_DECODE_DONE ; 
 scalar_t__ PTLS_BASE64_DECODE_IN_PROGRESS ; 
 int PTLS_ERROR_INCORRECT_BASE64 ; 
 int PTLS_ERROR_PEM_LABEL_NOT_FOUND ; 
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (char*,char*,char const*) ; 

__attribute__((used)) static int FUNC4(FILE *F, const char *label, ptls_buffer_t *buf)
{
    int ret = PTLS_ERROR_PEM_LABEL_NOT_FOUND;
    char line[256];
    ptls_base64_decode_state_t state;

    /* Get the label on a line by itself */
    while (FUNC0(line, 256, F)) {
        if (FUNC3(line, "BEGIN", label) == 0) {
            ret = 0;
            FUNC2(&state);
            break;
        }
    }
    /* Get the data in the buffer */
    while (ret == 0 && FUNC0(line, 256, F)) {
        if (FUNC3(line, "END", label) == 0) {
            if (state.status == PTLS_BASE64_DECODE_DONE || (state.status == PTLS_BASE64_DECODE_IN_PROGRESS && state.nbc == 0)) {
                ret = 0;
            } else {
                ret = PTLS_ERROR_INCORRECT_BASE64;
            }
            break;
        } else {
            ret = FUNC1(line, &state, buf);
        }
    }

    return ret;
}