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
struct RData {int dummy; } ;
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_int ;
typedef  int /*<<< orphan*/  mrb_input_stream_t ;

/* Variables and functions */
 struct RClass* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct RData* FUNC1 (int /*<<< orphan*/ *,struct RClass*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mrb_input_stream_type ; 
 int /*<<< orphan*/  FUNC3 (struct RData*) ; 

mrb_value
FUNC4(mrb_state *mrb, const char *base, mrb_int len)
{
  mrb_input_stream_t *stream = FUNC2(mrb, base, len, NULL, NULL);
  struct RClass *c = FUNC0(mrb, "InputStream");
  struct RData *d = FUNC1(mrb, c, stream, &mrb_input_stream_type);

  return FUNC3(d);
}