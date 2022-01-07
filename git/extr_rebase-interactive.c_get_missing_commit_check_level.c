
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum missing_commit_check_level { ____Placeholder_missing_commit_check_level } missing_commit_check_level ;


 int MISSING_COMMIT_CHECK_ERROR ;
 int MISSING_COMMIT_CHECK_IGNORE ;
 int MISSING_COMMIT_CHECK_WARN ;
 int _ (char*) ;
 scalar_t__ git_config_get_value (char*,char const**) ;
 int strcasecmp (char*,char const*) ;
 int warning (int ,char const*) ;

__attribute__((used)) static enum missing_commit_check_level get_missing_commit_check_level(void)
{
 const char *value;

 if (git_config_get_value("rebase.missingcommitscheck", &value) ||
   !strcasecmp("ignore", value))
  return MISSING_COMMIT_CHECK_IGNORE;
 if (!strcasecmp("warn", value))
  return MISSING_COMMIT_CHECK_WARN;
 if (!strcasecmp("error", value))
  return MISSING_COMMIT_CHECK_ERROR;
 warning(_("unrecognized setting %s for option "
    "rebase.missingCommitsCheck. Ignoring."), value);
 return MISSING_COMMIT_CHECK_IGNORE;
}
