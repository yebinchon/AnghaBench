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
struct mrbc_args {char** argv; size_t idx; char* prog; size_t argc; scalar_t__ verbose; } ;
struct TYPE_7__ {void* no_exec; void* dump_result; } ;
typedef  TYPE_1__ mrbc_context ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  void* mrb_bool ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  partial_hook ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 

__attribute__((used)) static mrb_value
FUNC10(mrb_state *mrb, struct mrbc_args *args)
{
  mrbc_context *c;
  mrb_value result;
  char *input = args->argv[args->idx];
  FILE *infile;
  mrb_bool need_close = FALSE;

  c = FUNC7(mrb);
  if (args->verbose)
    c->dump_result = TRUE;
  c->no_exec = TRUE;
  if (input[0] == '-' && input[1] == '\0') {
    infile = stdin;
  }
  else {
    need_close = TRUE;
    if ((infile = FUNC1(input, "r")) == NULL) {
      FUNC2(stderr, "%s: cannot open program file. (%s)\n", args->prog, input);
      return FUNC4();
    }
  }
  FUNC8(mrb, c, input);
  args->idx++;
  if (args->idx < args->argc) {
    need_close = FALSE;
    FUNC9(mrb, c, partial_hook, (void*)args);
  }

  result = FUNC3(mrb, infile, c);
  if (need_close) FUNC0(infile);
  FUNC6(mrb, c);
  if (FUNC5(result)) {
    return FUNC4();
  }
  return result;
}