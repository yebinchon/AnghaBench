
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int overridable; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* daemon_service ;
 int die (char*,char const*) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static void make_service_overridable(const char *name, int ena)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(daemon_service); i++) {
  if (!strcmp(daemon_service[i].name, name)) {
   daemon_service[i].overridable = ena;
   return;
  }
 }
 die("No such service %s", name);
}
