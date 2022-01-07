
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union drbd_state {int dummy; } drbd_state ;
struct drbd_connection {int dummy; } ;
typedef enum chg_state_flags { ____Placeholder_chg_state_flags } chg_state_flags ;


 int CS_DC_SUSP ;
 int drbd_info (struct drbd_connection*,char*,char*) ;
 int is_susp (union drbd_state) ;
 int print_state_change (char*,union drbd_state,union drbd_state,int) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static void conn_pr_state_change(struct drbd_connection *connection, union drbd_state os, union drbd_state ns,
     enum chg_state_flags flags)
{
 char pb[300];
 char *pbp = pb;

 pbp += print_state_change(pbp, os, ns, flags);

 if (is_susp(ns) != is_susp(os) && flags & CS_DC_SUSP)
  pbp += sprintf(pbp, "susp( %d -> %d ) ",
          is_susp(os),
          is_susp(ns));

 if (pbp != pb)
  drbd_info(connection, "%s\n", pb);
}
