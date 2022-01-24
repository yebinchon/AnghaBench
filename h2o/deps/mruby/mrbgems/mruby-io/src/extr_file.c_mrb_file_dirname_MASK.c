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

/* Variables and functions */
 int _MAX_DIR ; 
 int _MAX_DRIVE ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,char*) ; 
 size_t FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 

__attribute__((used)) static mrb_value
FUNC11(mrb_state *mrb, mrb_value klass)
{
#if defined(_WIN32) || defined(_WIN64)
  char dname[_MAX_DIR], vname[_MAX_DRIVE];
  char buffer[_MAX_DRIVE + _MAX_DIR];
  char *path;
  size_t ridx;
  mrb_value s;
  mrb_get_args(mrb, "S", &s);
  path = mrb_locale_from_utf8(mrb_str_to_cstr(mrb, s), -1);
  _splitpath((const char*)path, vname, dname, NULL, NULL);
  snprintf(buffer, _MAX_DRIVE + _MAX_DIR, "%s%s", vname, dname);
  mrb_locale_free(path);
  ridx = strlen(buffer);
  if (ridx == 0) {
    strncpy(buffer, ".", 2);  /* null terminated */
  } else if (ridx > 1) {
    ridx--;
    while (ridx > 0 && (buffer[ridx] == '/' || buffer[ridx] == '\\')) {
      buffer[ridx] = '\0';  /* remove last char */
      ridx--;
    }
  }
  return mrb_str_new_cstr(mrb, buffer);
#else
  char *dname, *path;
  mrb_value s;
  FUNC2(mrb, "S", &s);
  path = FUNC4(FUNC6(mrb, s), -1);

  if ((dname = FUNC1(path)) == NULL) {
    FUNC3(path);
    FUNC7(mrb, "dirname");
  }
  FUNC3(path);
  return FUNC5(mrb, dname);
#endif
}