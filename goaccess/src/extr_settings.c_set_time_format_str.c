
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* time_format; } ;


 int LOG_DEBUG (char*) ;
 TYPE_1__ conf ;
 int free (char*) ;
 int get_log_format_item_enum (char const*) ;
 char* get_selected_time_str (int) ;
 char* unescape_str (char const*) ;

void
set_time_format_str (const char *oarg)
{
  char *fmt = ((void*)0);
  int type = get_log_format_item_enum (oarg);


  if (conf.time_format)
    free (conf.time_format);


  if (type == -1) {
    conf.time_format = unescape_str (oarg);
    return;
  }


  if ((fmt = get_selected_time_str (type)) == ((void*)0)) {
    LOG_DEBUG (("Unable to set time format from enum: %s\n", oarg));
    return;
  }

  conf.time_format = fmt;
}
