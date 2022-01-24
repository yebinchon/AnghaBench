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
struct TYPE_5__ {struct RClass* object_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 struct RClass* FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  mrb_json_dump ; 
 int /*<<< orphan*/  mrb_json_generate ; 
 int /*<<< orphan*/  mrb_json_load ; 
 int /*<<< orphan*/  mrb_json_parse ; 
 int /*<<< orphan*/  mrb_json_pretty_generate ; 
 int /*<<< orphan*/  mrb_json_to_json ; 

void
FUNC5(mrb_state* mrb) {
  struct RClass *_class_json = FUNC4(mrb, "JSON");

  FUNC3(mrb, _class_json, "load", mrb_json_load, FUNC2(1));
  FUNC3(mrb, _class_json, "parse", mrb_json_parse, FUNC2(1));
  FUNC3(mrb, _class_json, "stringify", mrb_json_generate, FUNC2(1));
  FUNC3(mrb, _class_json, "dump", mrb_json_dump, FUNC2(1)|FUNC1(1));
  FUNC3(mrb, _class_json, "generate", mrb_json_generate, FUNC2(1));
  FUNC3(mrb, _class_json, "pretty_generate", mrb_json_pretty_generate, FUNC2(1));
  FUNC3(mrb, mrb->object_class, "to_json", mrb_json_to_json, FUNC0());
}