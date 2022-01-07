
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const git_merge_file_options ;


 int const GIT_MERGE_FILE_OPTIONS_INIT ;
 int memcpy (int const*,int const*,int) ;

__attribute__((used)) static void merge_file_normalize_opts(
 git_merge_file_options *out,
 const git_merge_file_options *given_opts)
{
 if (given_opts)
  memcpy(out, given_opts, sizeof(git_merge_file_options));
 else {
  git_merge_file_options default_opts = GIT_MERGE_FILE_OPTIONS_INIT;
  memcpy(out, &default_opts, sizeof(git_merge_file_options));
 }
}
