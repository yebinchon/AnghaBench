
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int UMH_NO_WAIT ;
 int call_usermodehelper (int ,int ,int *,int ) ;
 int mce_helper ;
 int mce_helper_argv ;

__attribute__((used)) static void mce_do_trigger(struct work_struct *work)
{
 call_usermodehelper(mce_helper, mce_helper_argv, ((void*)0), UMH_NO_WAIT);
}
