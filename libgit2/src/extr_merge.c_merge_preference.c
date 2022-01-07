
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_merge_preference_t ;
typedef int git_config ;


 int GIT_ENOTFOUND ;
 int GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY ;
 int GIT_MERGE_PREFERENCE_NONE ;
 int GIT_MERGE_PREFERENCE_NO_FASTFORWARD ;
 int git_config_free (int *) ;
 int git_config_get_string (char const**,int *,char*) ;
 scalar_t__ git_config_parse_bool (int*,char const*) ;
 int git_error_clear () ;
 int git_repository_config_snapshot (int **,int *) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static int merge_preference(git_merge_preference_t *out, git_repository *repo)
{
 git_config *config;
 const char *value;
 int bool_value, error = 0;

 *out = GIT_MERGE_PREFERENCE_NONE;

 if ((error = git_repository_config_snapshot(&config, repo)) < 0)
  goto done;

 if ((error = git_config_get_string(&value, config, "merge.ff")) < 0) {
  if (error == GIT_ENOTFOUND) {
   git_error_clear();
   error = 0;
  }

  goto done;
 }

 if (git_config_parse_bool(&bool_value, value) == 0) {
  if (!bool_value)
   *out |= GIT_MERGE_PREFERENCE_NO_FASTFORWARD;
 } else {
  if (strcasecmp(value, "only") == 0)
   *out |= GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY;
 }

done:
 git_config_free(config);
 return error;
}
