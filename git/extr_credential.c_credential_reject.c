
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr; TYPE_1__* items; } ;
struct credential {scalar_t__ approved; int password; int username; TYPE_2__ helpers; } ;
struct TYPE_3__ {int string; } ;


 int FREE_AND_NULL (int ) ;
 int credential_apply_config (struct credential*) ;
 int credential_do (struct credential*,int ,char*) ;

void credential_reject(struct credential *c)
{
 int i;

 credential_apply_config(c);

 for (i = 0; i < c->helpers.nr; i++)
  credential_do(c, c->helpers.items[i].string, "erase");

 FREE_AND_NULL(c->username);
 FREE_AND_NULL(c->password);
 c->approved = 0;
}
