
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_regset_view {int dummy; } ;
struct user_regs_struct {int dummy; } ;
struct user_fp_struct {int dummy; } ;
struct task_struct {int dummy; } ;
typedef int __u64 ;


 int BUILD_BUG_ON (int) ;
 int ELF_NFPREG ;
 int ELF_NGREG ;
 scalar_t__ is_compat_task () ;
 struct user_regset_view const user_parisc_compat_view ;
 struct user_regset_view const user_parisc_native_view ;

const struct user_regset_view *task_user_regset_view(struct task_struct *task)
{
 BUILD_BUG_ON(sizeof(struct user_regs_struct)/sizeof(long) != ELF_NGREG);
 BUILD_BUG_ON(sizeof(struct user_fp_struct)/sizeof(__u64) != ELF_NFPREG);




 return &user_parisc_native_view;
}
