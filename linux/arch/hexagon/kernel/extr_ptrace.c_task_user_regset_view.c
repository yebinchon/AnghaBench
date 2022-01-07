
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_regset_view {int dummy; } ;
struct task_struct {int dummy; } ;


 struct user_regset_view const hexagon_user_view ;

const struct user_regset_view *task_user_regset_view(struct task_struct *task)
{
 return &hexagon_user_view;
}
