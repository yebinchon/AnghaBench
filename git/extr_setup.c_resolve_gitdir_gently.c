
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_git_directory (char const*) ;
 char const* read_gitfile_gently (char const*,int*) ;

const char *resolve_gitdir_gently(const char *suspect, int *return_error_code)
{
 if (is_git_directory(suspect))
  return suspect;
 return read_gitfile_gently(suspect, return_error_code);
}
