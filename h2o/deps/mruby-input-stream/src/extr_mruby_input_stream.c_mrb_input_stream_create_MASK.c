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
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_int ;
typedef  int /*<<< orphan*/  mrb_input_stream_t ;
typedef  int /*<<< orphan*/  mrb_input_stream_free_callback ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

mrb_input_stream_t*
FUNC2(mrb_state *mrb, const char *base, mrb_int len, mrb_input_stream_free_callback free_cb, void *free_cb_data)
{
  mrb_input_stream_t *stream = (mrb_input_stream_t *)FUNC0(mrb, sizeof(mrb_input_stream_t));

  FUNC1(mrb, stream, base, len, 0, free_cb, free_cb_data);
  return stream;
}