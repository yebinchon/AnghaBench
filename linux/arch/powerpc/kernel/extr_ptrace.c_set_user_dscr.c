
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int EIO ;

__attribute__((used)) static int set_user_dscr(struct task_struct *task, unsigned long dscr)
{
 return -EIO;
}
