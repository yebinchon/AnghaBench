
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* accesslog; } ;


 int FATAL (char*,int ) ;
 int access_log_open (char const*) ;
 int errno ;
 int strerror (int ) ;
 TYPE_1__ wsconfig ;

void
ws_set_config_accesslog (const char *accesslog)
{
  wsconfig.accesslog = accesslog;

  if (access_log_open (wsconfig.accesslog) == 1)
    FATAL ("Unable to open access log: %s.", strerror (errno));
}
