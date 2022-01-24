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
 int FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value klass) {
  mrb_int mode;
  mrb_int argc, i;
  mrb_value *filenames;
  int ai = FUNC3(mrb);

  FUNC4(mrb, "i*", &mode, &filenames, &argc);
  for (i = 0; i < argc; i++) {
    const char *utf8_path = FUNC7(mrb, filenames[i]);
    char *path = FUNC6(utf8_path, -1);
    if (FUNC0(path, mode) == -1) {
      FUNC5(path);
      FUNC8(mrb, utf8_path);
    }
    FUNC5(path);
  }

  FUNC2(mrb, ai);
  return FUNC1(argc);
}