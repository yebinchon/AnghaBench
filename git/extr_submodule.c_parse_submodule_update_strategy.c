
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule_update_strategy {int type; int * command; } ;
typedef enum submodule_update_type { ____Placeholder_submodule_update_type } submodule_update_type ;


 int SM_UPDATE_COMMAND ;
 int SM_UPDATE_UNSPECIFIED ;
 int free (void*) ;
 int parse_submodule_update_type (char const*) ;
 int * xstrdup (char const*) ;

int parse_submodule_update_strategy(const char *value,
  struct submodule_update_strategy *dst)
{
 enum submodule_update_type type;

 free((void*)dst->command);
 dst->command = ((void*)0);

 type = parse_submodule_update_type(value);
 if (type == SM_UPDATE_UNSPECIFIED)
  return -1;

 dst->type = type;
 if (type == SM_UPDATE_COMMAND)
  dst->command = xstrdup(value + 1);

 return 0;
}
