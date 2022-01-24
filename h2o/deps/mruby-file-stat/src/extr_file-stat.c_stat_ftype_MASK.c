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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 struct stat* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,size_t) ; 
 scalar_t__ FUNC9 (char const*) ; 

__attribute__((used)) static mrb_value
FUNC10(mrb_state *mrb, mrb_value self)
{
  struct stat *st = FUNC7(mrb, self);
  const char *t;

  if (FUNC5(st->st_mode)) {
    t = "file";
  }
  else if (FUNC2(st->st_mode)) {
    t = "directory";
  }
  else if (FUNC1(st->st_mode)) {
    t = "characterSpecial";
  }
#ifdef S_ISBLK
  else if (S_ISBLK(st->st_mode)) {
    t = "blockSpecial";
  }
#endif
#ifdef S_ISFIFO
  else if (S_ISFIFO(st->st_mode)) {
    t = "fifo";
  }
#endif
#ifdef S_ISLNK
  else if (S_ISLNK(st->st_mode)) {
    t = "link";
  }
#endif
#ifdef S_ISSOCK
  else if (S_ISSOCK(st->st_mode)) {
    t = "socket";
  }
#endif
  else {
    t = "unknown";
  }
  return FUNC8(mrb, t, (size_t)FUNC9(t));
}