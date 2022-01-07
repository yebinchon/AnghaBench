
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr; TYPE_1__* items; } ;
struct credential {scalar_t__ password; scalar_t__ username; TYPE_2__ helpers; scalar_t__ quit; } ;
struct TYPE_3__ {int string; } ;


 int credential_apply_config (struct credential*) ;
 int credential_do (struct credential*,int ,char*) ;
 int credential_getpass (struct credential*) ;
 int die (char*,...) ;

void credential_fill(struct credential *c)
{
 int i;

 if (c->username && c->password)
  return;

 credential_apply_config(c);

 for (i = 0; i < c->helpers.nr; i++) {
  credential_do(c, c->helpers.items[i].string, "get");
  if (c->username && c->password)
   return;
  if (c->quit)
   die("credential helper '%s' told us to quit",
       c->helpers.items[i].string);
 }

 credential_getpass(c);
 if (!c->username && !c->password)
  die("unable to get password from user");
}
