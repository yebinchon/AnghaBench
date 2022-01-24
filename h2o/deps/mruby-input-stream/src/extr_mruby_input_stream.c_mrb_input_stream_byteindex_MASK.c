#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;
typedef  int /*<<< orphan*/  mrb_input_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static mrb_value
FUNC8(mrb_state *mrb, mrb_value self)
{
  mrb_input_stream_t *stream = FUNC0(self);
  mrb_int chr, n, len;

  FUNC1(mrb, stream);

  n = FUNC3(mrb, "i", &chr);
  if (n != 1) {
    FUNC6(mrb, E_ARGUMENT_ERROR, "wrong number of arguments (%S for 1)", FUNC2(n));
  }
  if (chr < 0 || chr > 255) {
    FUNC5(mrb, E_ARGUMENT_ERROR, "index should be a byte (0 - 255)");
  }

  len = FUNC7(stream, chr);
  if (len < 0) {
    return FUNC4();
  }

  return FUNC2(len);
}