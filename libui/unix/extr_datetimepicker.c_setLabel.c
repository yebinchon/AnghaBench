
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hasDate; scalar_t__ hasTime; } ;
typedef TYPE_1__ uiprivDateTimePickerWidget ;
typedef scalar_t__ gboolean ;
typedef int GDateTime ;


 int D_FMT ;
 scalar_t__ FALSE ;
 int GTK_BUTTON (TYPE_1__*) ;
 scalar_t__ TRUE ;
 int T_FMT ;
 char* g_date_time_format (int *,char*) ;
 int g_date_time_unref (int *) ;
 int g_free (char*) ;
 char* g_strdup_printf (char*,char*,char*) ;
 int gtk_button_set_label (int ,char*) ;
 char* nl_langinfo (int ) ;
 int * selected (TYPE_1__*) ;

__attribute__((used)) static void setLabel(uiprivDateTimePickerWidget *d)
{
 GDateTime *dt;
 char *fmt;
 char *msg;
 gboolean free;

 dt = selected(d);
 free = FALSE;
 if (d->hasDate && d->hasTime) {

  fmt = g_strdup_printf("%s %s", nl_langinfo(D_FMT), nl_langinfo(T_FMT));
  free = TRUE;
 } else if (d->hasDate)
  fmt = nl_langinfo(D_FMT);
 else
  fmt = nl_langinfo(T_FMT);
 msg = g_date_time_format(dt, fmt);
 gtk_button_set_label(GTK_BUTTON(d), msg);
 g_free(msg);
 if (free)
  g_free(fmt);
 g_date_time_unref(dt);
}
