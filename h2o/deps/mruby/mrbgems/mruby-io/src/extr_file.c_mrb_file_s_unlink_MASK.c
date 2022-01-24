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
typedef  size_t mrb_int ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static mrb_value
FUNC8(mrb_state *mrb, mrb_value obj)
{
  mrb_value *argv;
  mrb_value pathv;
  mrb_int argc, i;
  char *path;

  FUNC3(mrb, "*", &argv, &argc);
  for (i = 0; i < argc; i++) {
    const char *utf8_path;
    pathv = FUNC1(mrb, argv[i]);
    utf8_path = FUNC6(mrb, &pathv);
    path = FUNC5(utf8_path, -1);
    if (FUNC0(path) < 0) {
      FUNC4(path);
      FUNC7(mrb, utf8_path);
    }
    FUNC4(path);
  }
  return FUNC2(argc);
}