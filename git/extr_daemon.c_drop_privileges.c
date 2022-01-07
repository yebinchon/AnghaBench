
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct credentials {TYPE_1__* pass; int gid; } ;
struct TYPE_2__ {int pw_uid; int pw_name; } ;


 int die (char*) ;
 scalar_t__ initgroups (int ,int ) ;
 scalar_t__ setgid (int ) ;
 scalar_t__ setuid (int ) ;

__attribute__((used)) static void drop_privileges(struct credentials *cred)
{
 if (cred && (initgroups(cred->pass->pw_name, cred->gid) ||
     setgid (cred->gid) || setuid(cred->pass->pw_uid)))
  die("cannot drop privileges");
}
