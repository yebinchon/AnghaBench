
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_pt_regs {int dummy; } ;
struct siginfo {int dummy; } ;
struct faultinfo {int dummy; } ;


 int SEGV_IS_FIXABLE (struct faultinfo*) ;
 struct faultinfo* UPT_FAULTINFO (struct uml_pt_regs*) ;
 int UPT_IP (struct uml_pt_regs*) ;
 scalar_t__ UPT_IS_USER (struct uml_pt_regs*) ;
 int bad_segv (struct faultinfo,int ) ;
 int segv (struct faultinfo,int ,scalar_t__,struct uml_pt_regs*) ;
 int show_segv_info (struct uml_pt_regs*) ;

void segv_handler(int sig, struct siginfo *unused_si, struct uml_pt_regs *regs)
{
 struct faultinfo * fi = UPT_FAULTINFO(regs);

 if (UPT_IS_USER(regs) && !SEGV_IS_FIXABLE(fi)) {
  show_segv_info(regs);
  bad_segv(*fi, UPT_IP(regs));
  return;
 }
 segv(*fi, UPT_IP(regs), UPT_IS_USER(regs), regs);
}
