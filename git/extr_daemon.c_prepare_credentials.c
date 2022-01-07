
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct group {int gr_gid; } ;
struct credentials {int gid; TYPE_1__* pass; } ;
struct TYPE_2__ {int pw_gid; } ;


 int die (char*,char const*) ;
 struct group* getgrnam (char const*) ;
 TYPE_1__* getpwnam (char const*) ;

__attribute__((used)) static struct credentials *prepare_credentials(const char *user_name,
    const char *group_name)
{
 static struct credentials c;

 c.pass = getpwnam(user_name);
 if (!c.pass)
  die("user not found - %s", user_name);

 if (!group_name)
  c.gid = c.pass->pw_gid;
 else {
  struct group *group = getgrnam(group_name);
  if (!group)
   die("group not found - %s", group_name);

  c.gid = group->gr_gid;
 }

 return &c;
}
