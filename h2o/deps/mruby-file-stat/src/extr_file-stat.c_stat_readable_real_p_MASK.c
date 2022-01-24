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
struct stat {scalar_t__ st_uid; int st_mode; int /*<<< orphan*/  st_gid; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 struct stat* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static mrb_value
FUNC5(mrb_state *mrb, mrb_value self)
{
  struct stat *st;

#ifdef USE_GETEUID
  if (getuid() == 0)
    return mrb_true_value();
#endif
  st = FUNC0(mrb, self);
#ifdef S_IRUSR
  if (st->st_uid == getuid())
    return st->st_mode & S_IRUSR ? mrb_true_value() : mrb_false_value();
#endif
#ifdef S_IRGRP
  if (mrb_group_member(mrb, st->st_gid))
    return st->st_mode & S_IRGRP ? mrb_true_value() : mrb_false_value();
#endif
#ifdef S_IROTH
  if (!(st->st_mode & S_IROTH)) return mrb_false_value();
#endif
  return FUNC4();
}