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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;
struct TYPE_4__ {int pos; char* base; int len; } ;
typedef  TYPE_1__ mrb_input_stream_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static mrb_value
FUNC7(mrb_state *mrb, mrb_value self)
{
  mrb_int len;
  mrb_value buf;
  mrb_int n = FUNC2(mrb, "|iS", &len, &buf), pos;
  mrb_input_stream_t *stream = FUNC0(self);
  const char *start;

  FUNC1(mrb, stream);

  pos = stream->pos;
  start = stream->base + pos;

  if (pos >= stream->len) {
    return n == 0 ? FUNC6(mrb, "") : FUNC3();
  }
  if (n == 0) {
    stream->pos = stream->len;
    return FUNC5(mrb, start, stream->len - pos);
  } else {
    mrb_int newpos = pos + len;
    if (newpos > stream->len) {
      newpos = stream->len;
    }
    stream->pos = newpos;
    if (n == 1) {
      return FUNC5(mrb, start, newpos - pos);
    } else {
      return FUNC4(mrb, buf, start, newpos - pos);
    }
  }
}