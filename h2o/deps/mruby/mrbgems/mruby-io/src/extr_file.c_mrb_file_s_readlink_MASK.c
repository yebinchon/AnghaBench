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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMP_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC12 (char*,int) ; 
 int FUNC13 (char*,char*,size_t) ; 

__attribute__((used)) static mrb_value
FUNC14(mrb_state *mrb, mrb_value klass) {
#if defined(_WIN32) || defined(_WIN64)
  mrb_raise(mrb, E_NOTIMP_ERROR, "readlink is not supported on this platform");
  return mrb_nil_value(); // unreachable
#else
  char *path, *buf, *tmp;
  size_t bufsize = 100;
  ssize_t rc;
  mrb_value ret;
  int ai = FUNC2(mrb);

  FUNC3(mrb, "z", &path);
  tmp = FUNC5(path, -1);

  buf = (char *)FUNC6(mrb, bufsize);
  while ((rc = FUNC13(tmp, buf, bufsize)) == (ssize_t)bufsize && rc != -1) {
    bufsize *= 2;
    buf = (char *)FUNC9(mrb, buf, bufsize);
  }
  FUNC4(tmp);
  if (rc == -1) {
    FUNC0(mrb, buf);
    FUNC11(mrb, path);
  }
  tmp = FUNC12(buf, -1);
  ret = FUNC10(mrb, tmp, rc);
  FUNC4(tmp);
  FUNC0(mrb, buf);

  FUNC1(mrb, ai);
  return ret;
#endif
}