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
struct RClass {int /*<<< orphan*/  iv; } ;
struct RBasic {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  scalar_t__ mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_int ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct RClass*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct RClass*,struct RClass*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,struct RClass*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct RBasic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 char* FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 struct RClass* FUNC13 (int /*<<< orphan*/ *,struct RClass*) ; 

mrb_value
FUNC14(mrb_state *mrb, struct RClass *c)
{
  struct RClass *outer;
  mrb_value path;
  mrb_sym name;
  const char *str;
  mrb_int len;

  if (FUNC1(mrb, c)) return FUNC8();
  outer = FUNC13(mrb, c);
  if (outer == NULL) return FUNC8();
  name = FUNC2(mrb, outer, c);
  if (name == 0) return FUNC8();
  str = FUNC5(mrb, outer);
  path = FUNC11(mrb, 40);
  FUNC10(mrb, path, str);
  FUNC10(mrb, path, "::");

  str = FUNC12(mrb, name, &len);
  FUNC9(mrb, path, str, len);
  if (FUNC0(path)[0] != '#') {
    FUNC3(mrb, c->iv, FUNC7(mrb, "__outer__"), NULL);
    FUNC4(mrb, c->iv, FUNC7(mrb, "__classname__"), path);
    FUNC6(mrb, (struct RBasic*)c, path);
  }
  return path;
}