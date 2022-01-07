
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr; TYPE_1__* items; } ;
struct credential {int approved; TYPE_2__ helpers; int password; int username; } ;
struct TYPE_3__ {int string; } ;


 int credential_apply_config (struct credential*) ;
 int credential_do (struct credential*,int ,char*) ;

void credential_approve(struct credential *c)
{
 int i;

 if (c->approved)
  return;
 if (!c->username || !c->password)
  return;

 credential_apply_config(c);

 for (i = 0; i < c->helpers.nr; i++)
  credential_do(c, c->helpers.items[i].string, "store");
 c->approved = 1;
}
