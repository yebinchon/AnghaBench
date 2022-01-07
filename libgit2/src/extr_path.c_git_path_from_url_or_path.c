
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_buf_sets (int *,char const*) ;
 int git_path_fromurl (int *,char const*) ;
 scalar_t__ git_path_is_local_file_url (char const*) ;

int git_path_from_url_or_path(git_buf *local_path_out, const char *url_or_path)
{
 if (git_path_is_local_file_url(url_or_path))
  return git_path_fromurl(local_path_out, url_or_path);
 else
  return git_buf_sets(local_path_out, url_or_path);
}
