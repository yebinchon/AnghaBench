
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status {int dummy; } ;


 int WT_STATUS_HEADER ;
 int color (int ,struct wt_status*) ;
 int status_printf_ln (struct wt_status*,int ,char*,char*) ;

__attribute__((used)) static void wt_longstatus_print_trailer(struct wt_status *s)
{
 status_printf_ln(s, color(WT_STATUS_HEADER, s), "%s", "");
}
