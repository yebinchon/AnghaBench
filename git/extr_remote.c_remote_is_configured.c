
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int configured_in_repo; int origin; } ;



int remote_is_configured(struct remote *remote, int in_repo)
{
 if (!remote)
  return 0;
 if (in_repo)
  return remote->configured_in_repo;
 return !!remote->origin;
}
