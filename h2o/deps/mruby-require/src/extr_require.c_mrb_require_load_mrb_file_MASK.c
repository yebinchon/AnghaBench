#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_8__ {scalar_t__ jmp; scalar_t__ exc; } ;
typedef  TYPE_1__ mrb_state ;
typedef  int /*<<< orphan*/  mrb_irep ;
typedef  int /*<<< orphan*/  jmp_buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  E_LOAD_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static mrb_value
FUNC10(mrb_state *mrb, mrb_value self)
{
  char *path_ptr = NULL;
  FILE *fp = NULL;
  mrb_irep *irep;
  mrb_value path;

  FUNC4(mrb, "S", &path);
  path_ptr = FUNC8(mrb, path);

  fp = FUNC2(path_ptr, "rb");
  if (fp == NULL) {
    FUNC6(mrb, E_LOAD_ERROR, "can't open file -- %S", path);
  }

  irep = FUNC7(mrb, fp);
  FUNC1(fp);

  if (irep) {
    FUNC0(mrb, irep);
  } else if (mrb->exc) {
    // fail to load
    FUNC3(*(jmp_buf*)mrb->jmp, 1);
  } else {
    FUNC6(mrb, E_LOAD_ERROR, "can't load file -- %S", path);
    return FUNC5();
  }

  return FUNC9();
}