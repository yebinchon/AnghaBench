
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_options {int detect_directory_renames; void* detect_renames; int rename_limit; int verbosity; } ;


 int MERGE_DIRECTORY_RENAMES_CONFLICT ;
 int MERGE_DIRECTORY_RENAMES_NONE ;
 int MERGE_DIRECTORY_RENAMES_TRUE ;
 int free (char*) ;
 int git_config (int ,int *) ;
 int git_config_get_int (char*,int *) ;
 int git_config_get_string (char*,char**) ;
 void* git_config_rename (char*,char*) ;
 int git_parse_maybe_bool (char*) ;
 int git_xmerge_config ;
 int strcasecmp (char*,char*) ;

__attribute__((used)) static void merge_recursive_config(struct merge_options *opt)
{
 char *value = ((void*)0);
 git_config_get_int("merge.verbosity", &opt->verbosity);
 git_config_get_int("diff.renamelimit", &opt->rename_limit);
 git_config_get_int("merge.renamelimit", &opt->rename_limit);
 if (!git_config_get_string("diff.renames", &value)) {
  opt->detect_renames = git_config_rename("diff.renames", value);
  free(value);
 }
 if (!git_config_get_string("merge.renames", &value)) {
  opt->detect_renames = git_config_rename("merge.renames", value);
  free(value);
 }
 if (!git_config_get_string("merge.directoryrenames", &value)) {
  int boolval = git_parse_maybe_bool(value);
  if (0 <= boolval) {
   opt->detect_directory_renames = boolval ?
    MERGE_DIRECTORY_RENAMES_TRUE :
    MERGE_DIRECTORY_RENAMES_NONE;
  } else if (!strcasecmp(value, "conflict")) {
   opt->detect_directory_renames =
    MERGE_DIRECTORY_RENAMES_CONFLICT;
  }
  free(value);
 }
 git_config(git_xmerge_config, ((void*)0));
}
