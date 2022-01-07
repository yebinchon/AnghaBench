
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union drbd_state {int aftr_isp; int peer_isp; int user_isp; } ;
struct drbd_device {int dummy; } ;
typedef enum chg_state_flags { ____Placeholder_chg_state_flags } chg_state_flags ;


 int CS_DC_MASK ;
 int drbd_info (struct drbd_device*,char*,char*) ;
 int print_state_change (char*,union drbd_state,union drbd_state,int) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static void drbd_pr_state_change(struct drbd_device *device, union drbd_state os, union drbd_state ns,
     enum chg_state_flags flags)
{
 char pb[300];
 char *pbp = pb;

 pbp += print_state_change(pbp, os, ns, flags ^ CS_DC_MASK);

 if (ns.aftr_isp != os.aftr_isp)
  pbp += sprintf(pbp, "aftr_isp( %d -> %d ) ",
          os.aftr_isp,
          ns.aftr_isp);
 if (ns.peer_isp != os.peer_isp)
  pbp += sprintf(pbp, "peer_isp( %d -> %d ) ",
          os.peer_isp,
          ns.peer_isp);
 if (ns.user_isp != os.user_isp)
  pbp += sprintf(pbp, "user_isp( %d -> %d ) ",
          os.user_isp,
          ns.user_isp);

 if (pbp != pb)
  drbd_info(device, "%s\n", pb);
}
