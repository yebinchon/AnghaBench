
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; scalar_t__ name; } ;
typedef TYPE_1__ name_data ;


 int GIT_ERROR ;
 int strcmp (scalar_t__,char const*) ;

__attribute__((used)) static int update_count(name_data *data, const char *name)
{
 name_data *n;

 for (n = data; n->name; n++) {
  if (!strcmp(n->name, name)) {
   n->count++;
   return 0;
  }
 }

 return GIT_ERROR;
}
