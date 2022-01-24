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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMP_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

mrb_value
FUNC6(mrb_state *mrb, mrb_value klass)
{
#if defined(_WIN32) || defined(_WIN64)
  mrb_raise(mrb, E_NOTIMP_ERROR, "symlink is not supported on this platform");
#else
#ifndef S_ISLNK
#  ifdef _S_ISLNK
#    define S_ISLNK(m) _S_ISLNK(m)
#  else
#    ifdef _S_IFLNK
#      define S_ISLNK(m) (((m) & S_IFMT) == _S_IFLNK)
#    else
#      ifdef S_IFLNK
#        define S_ISLNK(m) (((m) & S_IFMT) == S_IFLNK)
#      endif
#    endif
#  endif
#endif

#ifdef S_ISLNK
  struct stat st;
  mrb_value obj;

  mrb_get_args(mrb, "o", &obj);

  if (mrb_lstat(mrb, obj, &st) == -1)
    return mrb_false_value();
  if (S_ISLNK(st.st_mode))
    return mrb_true_value();
#endif

  return FUNC1();
#endif
}