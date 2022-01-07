
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* log_format; void* date_format; void* time_format; } ;


 char const* ERR_FORMAT_NO_DATE_FMT_DLG ;
 char const* ERR_FORMAT_NO_LOG_FMT_DLG ;
 char const* ERR_FORMAT_NO_TIME_FMT_DLG ;
 TYPE_1__ conf ;
 int free (void*) ;
 int set_spec_date_format () ;
 void* unescape_str (char*) ;

__attribute__((used)) static const char *
set_formats (char *date_format, char *log_format, char *time_format)
{

  if (!time_format && !conf.time_format)
    return ERR_FORMAT_NO_TIME_FMT_DLG;
  if (!date_format && !conf.date_format)
    return ERR_FORMAT_NO_DATE_FMT_DLG;
  if (!log_format && !conf.log_format)
    return ERR_FORMAT_NO_LOG_FMT_DLG;

  if (time_format) {
    free (conf.time_format);
    conf.time_format = unescape_str (time_format);
  }

  if (date_format) {
    free (conf.date_format);
    conf.date_format = unescape_str (date_format);
  }

  if (log_format) {
    free (conf.log_format);
    conf.log_format = unescape_str (log_format);
  }

  set_spec_date_format ();

  return ((void*)0);
}
