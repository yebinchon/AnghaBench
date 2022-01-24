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
 int /*<<< orphan*/  E_NOTIMP_ERROR ; 
 int FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 
 struct RClass* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct RClass* FUNC3 (int /*<<< orphan*/ *,struct RClass*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct stat* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mrb_stat_type ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static mrb_value
FUNC12(mrb_state *mrb, mrb_value self)
{
  struct RClass *file_class;
  struct RClass *stat_class;
  struct stat st, *ptr;
  mrb_value fileno;

  if (FUNC9(mrb, self, FUNC6(mrb, "fileno"))) {
    fileno = FUNC5(mrb, self, "fileno", 0);
  }
  else {
    FUNC8(mrb, E_NOTIMP_ERROR, "`fileno' is not implemented");
  }

  if (FUNC1(FUNC4(fileno), &st) == -1) {
    FUNC11(mrb, "fstat");
  }

  file_class = FUNC2(mrb, "File");
  stat_class = FUNC3(mrb, file_class, "Stat");
  ptr = FUNC10(mrb);
  *ptr = st;

  return FUNC7(FUNC0(mrb, stat_class, &mrb_stat_type, ptr));
}