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
struct RClass {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  object_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct RClass* FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_input_stream_byteindex ; 
 int /*<<< orphan*/  mrb_input_stream_gets ; 
 int /*<<< orphan*/  mrb_input_stream_init ; 
 int /*<<< orphan*/  mrb_input_stream_read ; 
 int /*<<< orphan*/  mrb_input_stream_rewind ; 

void
FUNC5(mrb_state* mrb)
{
  struct RClass * c = FUNC3(mrb, "InputStream", mrb->object_class);

  FUNC4(mrb, c, "gets",  mrb_input_stream_gets,  FUNC2());
  FUNC4(mrb, c, "read",  mrb_input_stream_read,  FUNC0());
  FUNC4(mrb, c, "initialize",  mrb_input_stream_init,  FUNC1());
  FUNC4(mrb, c, "rewind",  mrb_input_stream_rewind,  FUNC2());
  FUNC4(mrb, c, "byteindex",  mrb_input_stream_byteindex,  FUNC0());
}