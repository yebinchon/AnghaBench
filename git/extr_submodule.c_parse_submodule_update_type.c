
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum submodule_update_type { ____Placeholder_submodule_update_type } submodule_update_type ;


 int SM_UPDATE_CHECKOUT ;
 int SM_UPDATE_COMMAND ;
 int SM_UPDATE_MERGE ;
 int SM_UPDATE_NONE ;
 int SM_UPDATE_REBASE ;
 int SM_UPDATE_UNSPECIFIED ;
 int strcmp (char const*,char*) ;

enum submodule_update_type parse_submodule_update_type(const char *value)
{
 if (!strcmp(value, "none"))
  return SM_UPDATE_NONE;
 else if (!strcmp(value, "checkout"))
  return SM_UPDATE_CHECKOUT;
 else if (!strcmp(value, "rebase"))
  return SM_UPDATE_REBASE;
 else if (!strcmp(value, "merge"))
  return SM_UPDATE_MERGE;
 else if (*value == '!')
  return SM_UPDATE_COMMAND;
 else
  return SM_UPDATE_UNSPECIFIED;
}
