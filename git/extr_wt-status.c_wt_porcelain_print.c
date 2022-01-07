
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status {int no_gettext; int * prefix; scalar_t__ relative_paths; scalar_t__ use_color; } ;


 int wt_shortstatus_print (struct wt_status*) ;

__attribute__((used)) static void wt_porcelain_print(struct wt_status *s)
{
 s->use_color = 0;
 s->relative_paths = 0;
 s->prefix = ((void*)0);
 s->no_gettext = 1;
 wt_shortstatus_print(s);
}
