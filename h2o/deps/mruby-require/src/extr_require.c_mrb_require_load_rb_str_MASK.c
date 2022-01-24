#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_11__ {scalar_t__ jmp; scalar_t__ exc; } ;
typedef  TYPE_1__ mrb_state ;
typedef  int /*<<< orphan*/  mrb_irep ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  jmp_buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  E_LOAD_ERROR ; 
 int MAX_PATH ; 
 int MRB_DUMP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*) ; 
 char* FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int) ; 

__attribute__((used)) static mrb_value
FUNC21(mrb_state *mrb, mrb_value self)
{
  char *path_ptr = NULL;
#if defined(_WIN32) || defined(_WIN64)
  char tmpname[MAX_PATH] = "tmp.XXXXXXXX";
#else
  char tmpname[] = "tmp.XXXXXXXX";
#endif
  mode_t mask;
  FILE *tmpfp = NULL;
  int fd = -1, ret;
  mrb_irep *irep;
  mrb_value code, path = FUNC10();

  FUNC9(mrb, "S|S", &code, &path);
  if (!FUNC15(path)) {
    path = FUNC13(mrb, "-");
  }
  path_ptr = FUNC14(mrb, path);

  mask = FUNC20(077);
  fd = FUNC8(tmpname);
  if (fd == -1) {
    FUNC16(mrb, "can't create mkstemp() at mrb_require_load_rb_str");
  }
  FUNC20(mask);

  tmpfp = FUNC6(fd, "r+");
  if (tmpfp == NULL) {
    FUNC2(fd);
    FUNC16(mrb, "can't open temporay file at mrb_require_load_rb_str");
  }

  ret = FUNC3(mrb, FUNC1(code), FUNC0(code), path_ptr, tmpfp);
  if (ret != MRB_DUMP_OK) {
    FUNC5(tmpfp);
    FUNC18(tmpname);
    FUNC11(mrb, E_LOAD_ERROR, "can't load file -- %S", path);
    return FUNC10();
  }

  FUNC19(tmpfp);
  irep = FUNC12(mrb, tmpfp);
  FUNC5(tmpfp);
  FUNC18(tmpname);

  if (irep) {
    FUNC4(mrb, irep);
  } else if (mrb->exc) {
    // fail to load
    FUNC7(*(jmp_buf*)mrb->jmp, 1);
  } else {
    FUNC11(mrb, E_LOAD_ERROR, "can't load file -- %S", path);
    return FUNC10();
  }

  return FUNC17();
}