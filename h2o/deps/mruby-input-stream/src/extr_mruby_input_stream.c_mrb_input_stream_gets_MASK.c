#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;
struct TYPE_5__ {scalar_t__ pos; scalar_t__ len; scalar_t__ base; } ;
typedef  TYPE_1__ mrb_input_stream_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char) ; 

__attribute__((used)) static mrb_value
FUNC5(mrb_state *mrb, mrb_value self)
{
  mrb_input_stream_t *stream = FUNC0(self);
  mrb_int pos, len;

  FUNC1(mrb, stream);

  pos = stream->pos;
  len = FUNC4(stream, '\n');
  if (len < 0) {
    return FUNC2();
  }
  if (stream->pos + len < stream->len) {
    len++;
  }
  stream->pos += len;
  return FUNC3(mrb, (stream->base + pos), len);
}