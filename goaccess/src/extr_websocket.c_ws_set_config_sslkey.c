
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* sslkey; } ;


 TYPE_1__ wsconfig ;

void
ws_set_config_sslkey (const char *sslkey)
{
  wsconfig.sslkey = sslkey;
}
