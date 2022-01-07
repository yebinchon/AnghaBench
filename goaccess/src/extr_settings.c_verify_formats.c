
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* time_format; char* date_format; char* log_format; } ;


 char const* ERR_FORMAT_NO_DATE_FMT ;
 char const* ERR_FORMAT_NO_LOG_FMT ;
 char const* ERR_FORMAT_NO_TIME_FMT ;
 TYPE_1__ conf ;

const char *
verify_formats (void)
{
  if (conf.time_format == ((void*)0) || *conf.time_format == '\0')
    return ERR_FORMAT_NO_TIME_FMT;

  if (conf.date_format == ((void*)0) || *conf.date_format == '\0')
    return ERR_FORMAT_NO_DATE_FMT;

  if (conf.log_format == ((void*)0) || *conf.log_format == '\0')
    return ERR_FORMAT_NO_LOG_FMT;

  return ((void*)0);
}
