
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int die (int ,char const*) ;
 int is_transport_allowed (char const*,int) ;

void transport_check_allowed(const char *type)
{
 if (!is_transport_allowed(type, -1))
  die(_("transport '%s' not allowed"), type);
}
