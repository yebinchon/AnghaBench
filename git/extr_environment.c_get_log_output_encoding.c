
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* get_commit_output_encoding () ;
 char const* git_log_output_encoding ;

const char *get_log_output_encoding(void)
{
 return git_log_output_encoding ? git_log_output_encoding
  : get_commit_output_encoding();
}
