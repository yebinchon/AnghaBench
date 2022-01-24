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
struct stat {int dummy; } ;
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct RClass*,int /*<<< orphan*/ *,struct stat*) ; 
 int FUNC1 (char*,struct stat*) ; 
 int /*<<< orphan*/  MRB_TT_STRING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct RClass* FUNC3 (int /*<<< orphan*/ *,struct RClass*,char*) ; 
 struct RClass* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct stat* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mrb_stat_type ; 
 char* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static mrb_value
FUNC12(mrb_state *mrb, mrb_value klass)
{
  struct RClass *file_class;
  struct RClass *stat_class;
  struct stat st, *ptr;
  mrb_value fname, tmp;
  char *path;

  FUNC6(mrb, "o", &fname);

  tmp = FUNC2(mrb, fname, MRB_TT_STRING, "String", "to_path");
  if (FUNC7(tmp)) {
    tmp = FUNC5(mrb, fname, MRB_TT_STRING, "String", "to_str");
  }
  path = FUNC10(mrb, tmp);
  if (FUNC1(path, &st) == -1) {
    FUNC11(mrb, path);
  }

  file_class = FUNC4(klass);
  stat_class = FUNC3(mrb, file_class, "Stat");
  ptr = FUNC9(mrb);
  *ptr = st;

  return FUNC8(FUNC0(mrb, stat_class, &mrb_stat_type, ptr));
}