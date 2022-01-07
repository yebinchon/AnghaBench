
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int strdup_strings; } ;
struct credential {TYPE_1__ helpers; } ;


 int memset (struct credential*,int ,int) ;

void credential_init(struct credential *c)
{
 memset(c, 0, sizeof(*c));
 c->helpers.strdup_strings = 1;
}
