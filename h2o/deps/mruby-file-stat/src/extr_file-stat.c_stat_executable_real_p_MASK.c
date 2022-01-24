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
struct stat {int st_mode; scalar_t__ st_uid; int /*<<< orphan*/  st_gid; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUGO ; 
 int S_IXUSR ; 
 struct stat* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static mrb_value
FUNC5(mrb_state *mrb, mrb_value self)
{
  struct stat *st = FUNC0(mrb, self);

#ifdef USE_GETEUID
  if (getuid() == 0)
    return st->st_mode & S_IXUGO ? mrb_true_value() : mrb_false_value();
#endif
#ifdef S_IXUSR
  if (st->st_uid == getuid())
    return st->st_mode & S_IXUSR ? mrb_true_value() : mrb_false_value();
#endif
#ifdef S_IXGRP
  if (mrb_group_member(mrb, st->st_gid))
    return st->st_mode & S_IXGRP ? mrb_true_value() : mrb_false_value();
#endif
#ifdef S_IXOTH
  if (!(st->st_mode & S_IXOTH)) return mrb_false_value();
#endif
  return FUNC4();
}