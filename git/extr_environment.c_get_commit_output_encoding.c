
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* git_commit_encoding ;

const char *get_commit_output_encoding(void)
{
 return git_commit_encoding ? git_commit_encoding : "UTF-8";
}
